package main

import (
	"fmt"
)

func main() {
	fmt.Println("Hello, World!")
	fmt.Println("Fibonnaci(12): ", fibonnaci(12))
}

func fibonnaci(n int) int {
	if n <= 1 {
		return n
	}
	var n2, n1 = 0, 1
	for i := 2; i <= n; i++ {
		n2, n1 = n1, n1+n2
	}
	return n1
}
