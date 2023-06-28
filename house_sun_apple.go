// main.go

// Main package
package main

import "fmt"

// Main application
func main() {
	// Print hello
    fmt.Println("Hello")
    
	// Declaring an array of 2000 int elements
	var arrayOfInts [2000]int
	
	// Loop through the array
	for i := 0; i < 2000; i++ {
		arrayOfInts[i] = i
	}
	
	// Iterating over each element and printing them
	for _, value := range arrayOfInts {
		fmt.Printf("%d\n", value)
	}	
}