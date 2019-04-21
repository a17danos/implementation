emcc cpp.cpp -s WASM=1 -s SIDE_MODULE=1 -O1 -s EXPORTED_FUNCTIONS='["add"]' -o cpp.wasm 
wasm2wat cpp.wasm > cpp.wat