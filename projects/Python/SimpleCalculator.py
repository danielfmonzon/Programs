def addFunction(x, y):
    addition = x + y
    print(addition)
    
def subFunction(x, y):
    subtraction = x - y
    print(subtraction)
    
def mulFunction(x, y):
    multiplication = x * y
    print(multiplication)
    
def divFuntion(x, y):
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
        divFuntion(inputOne, inputTwo)
    else:
        print("Error: Invalid selection! Terminating program.")
