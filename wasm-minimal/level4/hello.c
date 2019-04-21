#include <emscripten.h>

EMSCRIPTEN_KEEPALIVE
int fib() {
  return 56;
}

EMSCRIPTEN_KEEPALIVE
int fib2() {
  return 78;
}
