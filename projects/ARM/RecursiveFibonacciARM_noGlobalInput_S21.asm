.section .data


input_prompt  :  .asciz "Please enter a number betwen 1 and 10 \n"
input_spec  :  .asciz "%d"
fib      :  .asciz "%d\n"
oob_mess   : .asciz "Input is out of bounds \n"


.section .text


.global main


main:
    # Load address of input prompt into x0
    ldr x0, =input_prompt
print:
    # Call printf to display the input prompt
    bl printf

    # Allocate stack space for scanf
    sub sp, sp, 16
    # Load format specifier address into x0 for scanf
    ldr x0, =input_spec
    # Move stack pointer address to x1 for scanf to store the input number
    mov x1, sp
    # Call scanf to read user input into the location pointed by sp
    bl scanf

    # Load the input number from stack to x9
    ldr x9, [sp, #0]
    # Deallocate stack space used by scanf
    add sp, sp, 16
    # Move the input number to x0 for further processing
    mov x0, x9

    # Check if input is 0 and branch to bounds if so
    cbz x0, out_of_bounds
    # Subtract 10 from input to check upper bound
    subs x3, x0, 10
    # Branch to bounds if input is greater than 10
    b.gt out_of_bounds
    # Subtract 1 from input to check lower bound
    subs x3, x0, 1
    # Branch to bounds if input is less than 1
    b.lt out_of_bounds

    # Branch with link to fib_a to calculate Fibonacci number
    bl fib_a
    # Load address of fib format specifier into x0
    ldr x0, =fib
    # Call printf to print the Fibonacci number
    bl printf
    # Branch to exit to terminate program
    b exit

fib_a:
    # Subtract 2 from input; if result > 0, not base case
    subs x10, x0, 2
    # Branch to fib_function if not base case
    b.gt fib_function
    # Adjust for Fibonacci sequence base case handling
    sub x10, x0, 1
    # Prepare return value in x1
    mov x1, x10
    # Return from function
    br x30

fib_function:
    # Allocate stack space
    sub sp, sp, 24
    # Save return address on stack
    stur x30, [sp, 8]
    # Save argument on stack
    stur x0, [sp, 0]

    # Calculate argument for first recursive call
    sub x0, x0, 1
    # Recursive call to fib_a with n-1
    bl fib_a

    # Store result of first recursive call on stack
    stur x1, [sp, 16]
    # Restore original argument from stack
    ldr x0, [sp, 0]

    # Calculate argument for second recursive call
    sub x0, x0, 2
    # Recursive call to fib_a with n-2
    bl fib_a

    # Load result of first recursive call into x2
    ldr x2, [sp, 16]
    # Add results of two recursive calls
    add x1, x2, x1

    # Restore return address from stack
    ldr x30, [sp, 8]
    # Deallocate stack space
    add sp, sp, 24
    # Return from function
    br x30

out_of_bounds:
    # Load address of out-of-bounds message into x0
    ldr x0, =oob_mess
    # Call printf to display the message
    bl printf
    # Branch to exit to terminate program
    b exit

# branch to this label on program completion
exit:
    mov x0, 0
    mov x8, 93
    svc 0
    ret
