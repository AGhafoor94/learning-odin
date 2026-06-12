package main

import "core:fmt"

iterators :: proc() {
	// for i := 0; i < 100; i += 1 do fmt.println("TEST PROC, ", i)
	// for i in 0 ..< 100 do fmt.println("TEST PROC, ", i)
	for i in 0 ..= 100 do fmt.println("TEST PROC, ", i)
}
learning_arrays :: proc() {
	test_array := [dynamic]int{}
	x := make([dynamic]int, 0, 10)

	for i in 0 ..< 10 do append(&test_array, i)

	for value, index in test_array do fmt.println(value, " ", index)

	// remove last item
	pop(&test_array)
	for value, index in test_array do fmt.println(value, " ", index)
}
learning_pointers :: proc(index: ^int) {
	// i := 100
	// p := &i

	fmt.println(index^)

	index^ = 200
	// fmt.println(index^)
}
