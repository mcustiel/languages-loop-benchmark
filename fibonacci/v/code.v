module main

import strconv
import os

fn fibonacci(n int) int {
	if n == 0 {
		return 0
	}
	if n == 1 {
		return 1
	}
	return fibonacci(n - 1) + fibonacci(n - 2)
}

fn main() {
	input := strconv.atoi(os.args[1]) or { panic('could not parse input') }
	u := int(input)
	mut r := 0
	for i := 0; i < u; i++ {
		r += fibonacci(i)
	}
	println(r)
}
