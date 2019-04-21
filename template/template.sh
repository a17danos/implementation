if (( $# != 3 )); then
    echo "$0 arithmetic cpp \"['_add','_subtract','_divide','_multiply']\""
else
    cp template.html $1.html
    emcc $1.$2 -o $1.js -s EXPORTED_FUNCTIONS=$3
    emcc $1.$2 -Wseparate-asm -s WASM=0 -s EXPORTED_FUNCTIONS=$3 -o $1ASM.js
fi
