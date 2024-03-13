class Calculator:
    
    def __init__(self, menu_selection = 0):
        self.result = float(0.0)
        self.menu_selection = int(menu_selection)
    
    def add_function(self, input_one, input_two):
        self.result = input_one + input_two
    
    def sub_function(self, input_one, input_two):
        self.result = input_one - input_two
    
    def mul_function(self, input_one, input_two):
        self.result = input_one * input_two
    
    def div_function(self, input_one, input_two):
        if input_two == 0:
            print("Error")
            return
        self.result = input_one / input_two
        
    def menu(self):
        print(f"\nCurrent Result: {self.result}\n")
        
        print("Calculator Menu")
        print("---------------")
        print("1. Addition")
        print("2. Subtraction")
        print("3. Multiplication")
        print("4. Division")
        print("5. Exponentiation")
        print("6. Logarithm")
        print("7. Display Average\n")
        
    def menu_input(self):
        menu_selection = int(input("Enter Menu Selection: "))
        print("")
        input_one = float(input("Enter first operand: "))
        input_two = float(input("Enter second operand: "))
        return menu_selection, input_one, input_two
    

if __name__ == "__main__":
    
    calc = Calculator()
    
    while True:
        calc.menu()
        menu_selection, input_one, input_two = calc.menu_input() # Unpack and assign menu selection and 
        # operands from user input returned by calc.menu_input()

        if menu_selection == 1:
            calc.add_function(input_one, input_two)
        elif menu_selection == 2:
            calc.sub_function(input_one, input_two)
        elif menu_selection == 3:
            calc.mul_function(input_one, input_two)
        elif menu_selection == 4:
            calc.div_function(input_one, input_two)
        else:
            print("Error: Invalid selection! Terminating program.")
