#define WASM_EXPORT __attribute__((visibility("default"))) extern "C"

WASM_EXPORT
int add(int x, int y) {
	return x + y;
}

WASM_EXPORT
int subtract(int x, int y) {
	return x - y;
}

WASM_EXPORT
int multiply(int x, int y) {
	return x * y;
}

WASM_EXPORT
float divide(float x, float y) {
	return x / y;
}
