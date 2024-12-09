module main

import rand
import strconv
import os

fn main() {
	input := strconv.atoi(os.args[1]) or { panic('could not parse input') } // Get an input number from the command line
	u := int(input)
	r := int(rand.intn(10000) or { panic('could not get random number') }) // Get a random number 0 <= r < 10k
	mut a := [10000]int{} // Array of 10k elements initialized to 0
	for i in 0 .. 10000 { // 10k outer loop iterations
		for j in 0 .. 100000 { // 100k inner loop iterations, per outer loop iteration
			a[i] = a[i] + j % u // Simple sum
		}
		a[i] += r // Add a random value to each element in array
	}
	println(a[r]) // Print out a single element from the array
}
