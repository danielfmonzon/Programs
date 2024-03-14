# Program: One-Run Calculator
# Description: A command line calculator that prompts for two numbers, displays a menu of four operations
#              (Addition, Subtraction, Multiplication, Division), and performs the selected operation.
#              It exits after displaying the result or an error message if an invalid choice is made.
#              Aimed at practicing input/output, selection structures, and arithmetic operations in Python
# Author: Daniel Monzon
# Date: 03/12/2024
# Version: 1.0

def addFunction(x, y):
    addition = x + y
    print(addition)
    
def subFunction(x, y):
    subtraction = x - y
    print(subtraction)
    
def mulFunction(x, y):
    multiplication = x * y
    print(multiplication)
    
def divFunction(x, y):
    division = x / y
    print(division)
    

if __name__ == "__main__":
    inputOne = float(input("Enter first operand: "))
    inputTwo = float(input("Enter second operand: "))

    print("Calculator Menu")
    print("---------------")
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")

    operation = int(input("Which operation do you want to perform? "))

    if operation == 1:
        addFunction(inputOne, inputTwo)
    elif operation == 2:
        subFunction(inputOne, inputTwo)
    elif operation == 3:
        mulFunction(inputOne, inputTwo)
    elif operation == 4:
        divFunction(inputOne, inputTwo)
    else:
        print("Error: Invalid selection! Terminating program.")
