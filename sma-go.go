package main

import "C"

func main() {
}

//export add
func add(x int, y int) int {
	return x + y
}
