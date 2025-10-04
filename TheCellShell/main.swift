//
//  main.swift
//  TheCellShell
//
//  Created by Julien Hwang on 3/10/2025.
//

import Foundation

print("Hello, World!")

import Foundation
 
// 1. Input
 
// Get number of daytime minutes
var dayTimeMinutes = 0
while true {
    
    // Prompt
    print("Number of daytime minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    dayTimeMinutes = givenInteger
    break
 
}
 
// 2. Process
 
// Calculate costs for plan A
var a = 0
 
// Add daytime cost
a += (dayTimeMinutes - 100) * 25
if a < 0{
    a = 0
}
// Calculate costs for plan B
 
// 3. Output
print("Plan A costs \(a)")
 
