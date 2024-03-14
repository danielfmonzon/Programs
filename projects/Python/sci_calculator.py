import math

class Calculator:
    
    def __init__(self, menu_selection = 0):
        self.result = float(0.0)
        self.menu_selection = int(menu_selection)
        self.sum_calculation = float(0.0)
        self.num_calculation = int(0.0)
    
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
        
    def exp_function(self, input_one, input_two):
        self.result = input_one ** input_two    
        
    def log_function(self, input_one, input_two):
        try:
            self.result = math.log(input_two, input_one)  # math.log(x, base) : log (2) base = x
        except ValueError:
            print(f"Error: Invalid selection! Input {input_one} causes Value Error.")
            return None
        
    def avg_function(self):
        if self.sum_calculation > 0:
            print(f"Sum of calculations: {self.sum_calculation}")
            print(f"Number of calculations: {self.num_calculation}")
            rounded_avg = round((self.sum_calculation / self.num_calculation), 2)
            print(f"Average of calculations: {rounded_avg}")
            print("")
        else:
           print("Error: no calculations yet to average!")
           print("")

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
        try:
            menu_selection = int(input("Enter Menu Selection: "))
            print("")
            return menu_selection
        except ValueError:
             print("") 
             print("Error: Invalid selection! Terminating program.")
             return False
            
    def get_operands(self):
        first_input = input("Enter first operand: ")
        second_input = input("Enter second operand: ")
        
        if first_input.upper() == "RESULT":
            input_one = self.result
        else:
            input_one = float(first_input)
            
        if second_input.upper() == "RESULT":
            input_two = self.result
        else:
            input_two = float(second_input)
            
        return input_one, input_two

if __name__ == "__main__":
    
    calc = Calculator()
    loop = True
    display_menu = True
    
    while loop:
        if display_menu:
            calc.menu()
            
        menu_selection = calc.menu_input() # Unpack and assign menu selection and 
        # operands from user input returned by calc.menu_input()

        if menu_selection in [1, 2, 3, 4, 5, 6]:
            input_one, input_two = calc.get_operands()
            
        if menu_selection == 1:
            calc.add_function(input_one, input_two)
        elif menu_selection == 2:
            calc.sub_function(input_one, input_two)
        elif menu_selection == 3:
            calc.mul_function(input_one, input_two)
        elif menu_selection == 4:
            calc.div_function(input_one, input_two)
        elif menu_selection == 5:
            calc.exp_function(input_one, input_two)
        elif menu_selection == 6:
            calc.log_function(input_one, input_two)
        elif menu_selection == 7:
            calc.avg_function()
            display_menu = False
            continue
        elif menu_selection == 0:
            print("Thanks for using this calculator. Goodbye!")
            loop = False
        else:
            print("Error: Invalid selection! Terminating program.")
            loop = False
         
        if menu_selection in [1, 2, 3, 4, 5, 6]:
           calc.num_calculation += 1
           calc.sum_calculation += calc.result
           display_menu = True
           
