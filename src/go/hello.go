package main

import (
	"fmt"
)

func main() {
	fmt.Println("Fibonnaci(12): ", fibonnaci(12))
	fmt.Println("Fibonnaci(12): ", fibonnaci2(12))
	fmt.Println("Fibonnaci(12): ", fibonnaci(12))
	fmt.Println("Fibonnaci(12): ", fibonnaci2(12))
	fmt.Println("Hello, World!")
}

func fibonnaci2(n int) int {
	if n <= 1 {
		return n
	}
	var n2, n1 = 0, 1
	for i := 2; i <= n; i++ {
		n2, n1 = n1, n1+n2
	}
	return n1
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
