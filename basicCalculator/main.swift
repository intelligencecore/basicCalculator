//
//  main.swift
//  basicCalculator
//
//  Created by Richie on 6/18/25.
//

import Foundation

// take input and say hello to  user
var num1 = ""
var num2 = ""

print("Welcome to the basic calculator in CLI!")
print("Please input the first number to be used in the operation:")


// optional binding to chekc it the input is not empty
if let input = readLine(), !input.isEmpty {
    num1 = input
} else {
    print("This is an invalid input")
}

var operator1 = ""
print("Great! Now select the operator to be used: +, -, /, *")
if let input = readLine(), !input.isEmpty, input == "+" || input == "-" || input == "*" || input == "/" {
    operator1 = input
}


print("Please input the second number to be used in the operation.")
if let input = readLine(), !input.isEmpty {
    num2 = input
} else {
    print("This is an invalid input")
}



// converting the string given by the user to double and initializing the dobule variables to zero in case that a nil value is given.
var integerInput = 0.0
var integer2Input = 0.0

if let num1 = Double(num1){
   integerInput = num1
}

if let num2 = Double(num2){
    integer2Input = num2
}



// A swifty switch matching the input inside the operator variable
switch operator1 {
case "+":
    // do addition
    print("The result is \(integerInput + integer2Input)")
case "-":
    // do subtraction
    print("The result is \(integerInput - integer2Input)")
case "*":
    // do multiplication
    print("The result is \(integerInput * integer2Input)")
case "/":
    // do division
if integer2Input == 0 {
        // check if the second operand in a division is equal to zero.
         print("Error: Division by zero is undefined. The operation cannot continue.")
} else { print("The result is \(integerInput / integer2Input)")
    }
default:
    // handle unknown operator (if needed)
print("The operator provided is invalid")
}








