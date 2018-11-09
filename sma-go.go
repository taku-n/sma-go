package main

import "C"

import (
	"math"
	"unsafe"
)

func main() {
}

//export add
func add(x int, y int) int {
	return x + y
}

//export sum
func sum(ca *C.int, n C.int) C.int {
	if math.MaxInt32 < n {
		return 0
	}

	p := unsafe.Pointer(ca)
	a := (*[math.MaxInt32]int)(p)
	s := a[:n]

	sum := 0
	//for _, v := range s {
	//	sum += v
	//}
	for i := 0; i < int(n); i++ {
		sum += s[i]
	}

	return C.int(42)
}
