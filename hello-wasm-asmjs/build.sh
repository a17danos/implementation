emcc cp2.cpp -o index.html
wasm2wat index.wasm > index.wat
perl -0777 -pi -e 's/<svg.*svg>/emscripten/sg' index.html