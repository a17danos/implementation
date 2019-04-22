if (( $# != 2 )); then
    echo "$0 arithmetic cpp"
else
    cp template.html $1.html
    emcc $1.$2 -o $1.js
    emcc $1.$2 -Wseparate-asm -s WASM=0 -o $1ASM.js
fi
