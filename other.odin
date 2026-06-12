package main

import "core:fmt"

iterators :: proc() {
	// for i := 0; i < 100; i += 1 do fmt.println("TEST PROC, ", i)
	// for i in 0 ..< 100 do fmt.println("TEST PROC, ", i)
	for i in 0 ..= 100 do fmt.println("TEST PROC, ", i)
}
learning_arrays :: proc() {
	test_array := [dynamic]int{}
	x := make([dynamic]int, 0, 15)

	// for i in 0 ..< 10 do append(&test_array, i)


	learning_pointers_for_arrays(&test_array, 10)
	fmt.println(test_array)
	learning_pointers_for_arrays(&x, 15)
	fmt.println(x)
}
learning_pointers :: proc(index: ^int) {
	// i := 100
	// p := &i

	fmt.println(index^)

	index^ = 200
	// fmt.println(index^)
}
learning_pointers_for_arrays :: proc(array: ^[dynamic]int, length: int) {
	for i in 0 ..< length do append(&array^, i)
	fmt.println(array^)
	append(&array^, 200)
	// for value, index in array^ do fmt.println(value, " ", index)

	fmt.println(array^)
	pop(&array^)
}
