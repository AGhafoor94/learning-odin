package main

import "core:fmt"

main :: proc() {
	fmt.println("Hello")
	x := 100
	learning_pointers(&x)
	fmt.println(x)

	learning_arrays()
}
