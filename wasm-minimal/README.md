https://agniva.me/wasm/2018/05/17/wasm-hard-way.html

- 0: `emcc hello.c -o hello.js`
- 1: `emcc hello.c -o hello.wasm -Os -s SIDE_MODULE=1`
- 2: `emcc hello.c -o hello.wasm -Os`
- 3: `wat2wasm hello.wat`
- 4: `emcc hello.c -o hello.wasm -Os && emcc hello.c -Os -Wseparate-asm -s WASM=0 -o hello.asm.js`

Serve with `emrun --no_browser --port 8000 .`

Note also see: https://gist.github.com/kripken/59c67556dc03bb6d57052fedef1e61ab