emcc hello.c -o index.html
wasm2wat index.wasm > index.wat
perl -0777 -pi -e 's/<svg.*svg>/emscripten/sg' index.html


https://emscripten.org/docs/tools_reference/emcc.html

-O2
-s ASM_JS=1 -s WASM=1

https://github.com/emscripten-core/emscripten/blob/master/src/settings.js

// This disables linking and other causes of adding extra code automatically,
// and as a result, your output compiled code (in the .asm.js file, if you emit
// with --separate-asm) will contain only the functions you provide.
var ONLY_MY_CODE = 0;

// Whether to use compile code to WebAssembly. Set this to 0 to compile to
// asm.js.  This will fetch the binaryen port and build it. (If, instead, you
// set BINARYEN_ROOT in your ~/.emscripten file, then we use that instead of the
// port, which can useful for local dev work on binaryen itself).
var WASM = 1;

// For internal use only (name of the file containing wasm text, if relevant).
var WASM_TEXT_FILE = '';

// For internal use only (name of the file containing wasm binary, if relevant).
var WASM_BINARY_FILE = '';

// For internal use only (name of the file containing asm.js, if relevant).
var ASMJS_CODE_FILE = '';

--profiling

-o <target>
The target file name extension defines the output type to be generated:

<name> .js : JavaScript (+ separate <name>.wasm file if emitting WebAssembly). (default)
<name> .mjs : ES6 JavaScript module (+ separate <name>.wasm file if emitting WebAssembly).
<name> .html : HTML + separate JavaScript file (<name>.js; + separate <name>.wasm file if emitting WebAssembly).
<name> .bc : LLVM bitcode.
<name> .o : LLVM bitcode (same as .bc), unless in WASM_OBJECT_FILES mode, in which case it will contain a WebAssembly object.
<name> .wasm : WebAssembly without JavaScript support code (“standalone wasm”).

--separate-asm
Emits asm.js in one file, and the rest of the code in another, and emits HTML that loads the asm.js first, in order to reduce memory load during startup. See Avoid memory spikes by separating out asm.js.

