#include <emscripten.h>

EMSCRIPTEN_KEEPALIVE
int add(int x, int y) {
	return x + y;
}

EMSCRIPTEN_KEEPALIVE
int subtract(int x, int y) {
	return x - y;
}

EMSCRIPTEN_KEEPALIVE
int multiply(int x, int y) {
	return x * y;
}

EMSCRIPTEN_KEEPALIVE
float divide(float x, float y) {
	return x / y;
}
