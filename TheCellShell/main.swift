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
var weekEndTimeMinutes = 0

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
    
    print("Number of weekend minutes?")
    
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
    weekEndTimeMinutes = givenInteger
    break
}
 
// 2. Process
 
// Calculate costs for plan A
var a = 0.0
 
// Add daytime  cost
a += Double((dayTimeMinutes - 100)) * 0.25
if a < 0{
    a = 0
}
// night time and weekend cost
a +=  0.15 * Double(eveningTimeMinutes) + Double(weekEndTimeMinutes) * 0.2
// Calculate costs for plan B
// Calculate costs for plan A
var b = 0.0
 
// Add daytime  cost
b += Double((dayTimeMinutes - 250)) * 0.45
if b < 0{
    b = 0
}
// night time and weekend cost
b +=  0.35 * Double(eveningTimeMinutes) + Double(weekEndTimeMinutes) * 0.25





// 3. Output
print("Plan A costs \(a)")
print("Plan B costs \(b)")
