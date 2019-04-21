(module
  (type (;0;) (func))
  (import "env" "__memory_base" (global (;0;) i32))
  (func (;0;) (type 0)
    global.get 0
    global.set 1
    global.get 1
    i32.const 5242880
    i32.add
    global.set 2)
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (export "__post_instantiate" (func 0)))
