package main

import "core:fmt"

type_data_struct :: struct {
	name:    string,
	num_one: u32,
}

main :: proc() {
	fmt.println("Hello")
	x := 100
	learning_pointers(&x)
	fmt.println(x)

	learning_arrays()

	type_data := type_data_struct{"Test", 200}

	fmt.println(type_data)

}
