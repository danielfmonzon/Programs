.section .data

input_format:   .asciz "Please enter a string: \n"
input_spec:     .asciz "%[^\n]"
output_spec:    .asciz "The number of vowels is %d \n"
input:          .space 255

.section .text

.global main

main:
    #Print greeting and ask for string
    ldr x0, =input_format
    bl printf

    ldr x0, =input_spec
    ldr x1, =input

    #Scanf to read input
    bl scanf

    #Set a saved register (x19-x27) to zero to be used as a counter
    mov x19, 0

    ldr x2, =input

count_vowels:
    #Load the input char from memory into a register -- ldrb
    ldrb w3, [x2], #1

    #Check if the char is a null or newline chararacter, if it is, go to
step 8
    cmp x3, 0
    beq done
    #Otherwise check if the char is a vowel
    cmp x3, 'A'
    beq increment_counter
    cmp x3, 'E'
    beq increment_counter
    cmp x3, 'I'
    beq increment_counter
    cmp x3, 'O'
    beq increment_counter
    cmp x3, 'U'
    beq increment_counter
    cmp x3, 'a'
    beq increment_counter
    cmp x3, 'e'
    beq increment_counter
    cmp x3, 'i'
    beq increment_counter
    cmp x3, 'o'
    beq increment_counter
    cmp x3, 'u'
    beq increment_counter

    #Go to step 4
    b count_vowels

increment_counter:
    add x19, x19, 1
    b count_vowels

done:
    #Use printf to print the counter's value
    ldr x0, =output_spec
    mov x1, x19
    bl printf

    #Run exit sequence
    b exit

exit:
    mov x0, 0
    mov x8, 93
    svc 0
    ret
