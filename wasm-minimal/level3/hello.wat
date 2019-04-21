(module
   (func $fib (result i32)
      i32.const 12
   )
   (func $fib2 (result i32)
      i32.const 23
   )
   (export "fib" (func $fib))
   (export "fib2" (func $fib2))
)
