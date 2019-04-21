#include <emscripten.h>

EMSCRIPTEN_KEEPALIVE
int fib() {
  return 12;
}

EMSCRIPTEN_KEEPALIVE
int fib2() {
  return 34;
}
