#include <emscripten.h>

EMSCRIPTEN_KEEPALIVE
int fib() {
  return 42;
}

EMSCRIPTEN_KEEPALIVE
int fib2() {
  return 24;
}
