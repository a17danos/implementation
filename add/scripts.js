let add;

function loadWebAssembly(fileName) {
  return fetch(fileName)
    .then(response => response.arrayBuffer())
    .then(bits => WebAssembly.compile(bits))
    .then(module => { return new WebAssembly.Instance(module) });
};
  
loadWebAssembly('add.wasm')
  .then(instance => {
    add = instance.exports._Z3addi;
    console.log('Finished compiling! Ready when you are...');
  });
  