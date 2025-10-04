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
var eveningTimeMinutes = 0

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

    print("Number of evening minutes?")
    
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
    eveningTimeMinutes = givenInteger
    break
    
}
 
// 2. Process
 
// Calculate costs for plan A
var a = 0.0
 
// Add daytime cost
a += Double((dayTimeMinutes - 100)) * 0.25 + 0.15 * Double(eveningTimeMinutes)
if a < 0{
    a = 0
}
// Calculate costs for plan B
 
// 3. Output
print("Plan A costs \(a)")
 
