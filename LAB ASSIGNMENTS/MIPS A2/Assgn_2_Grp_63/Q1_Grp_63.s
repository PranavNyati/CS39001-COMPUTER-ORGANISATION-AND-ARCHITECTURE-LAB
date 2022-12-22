# Assn-2, Ques 1
# Group-63
# Pranav Nyati (Roll : 20CS30037)
# Shreyas Jena (Roll : 20CS30049)

# This program takes as input two 16-bit signed integers (encoded in 2’s complement form) from the user 
# and calculates their product using Booth's Multiplication Algorithm, and then displays the result.

    .globl main

    .data

input_prompt_1:
    .asciiz "Enter the first integer in the range [-32768, 32767]: \n"
input_prompt_2:
    .asciiz "Enter the second number in the range [-32768, 32767]: \n"
error_prompt:
    .asciiz "Input integer must be in range [-32768,32767] so that it can be represented as a 16-bit signed integer. Please enter the input again: \n"
result_prompt:
    .asciiz "The product of the two numbers is: "
newline:
    .asciiz "\n"

    .text

main:
    li    $v0, 4                               # prompt user for first input
    la    $a0, input_prompt_1
    syscall

    jal   read_input_func                      # call to function to read input
    move  $s0, $v0                             # store the first input in $s0

    li    $v0, 4                               # prompt user for second input
    la    $a0, input_prompt_2
    syscall

    jal   read_input_func                      # call to function to read input
    move  $s1, $v0                             # store the second input in $s1

    move $a0, $s0                              # move the first number (multiplicand -> denoted by M) in $a0
    move $a1, $s1                              # move the second number (multiplier -> denoted by Q) in $a1

    jal  multiply_booth                        # call to function to multiply two numbers using Booth's Algorithm
    move $s2, $v0                              # move the product (return value of the function) in $s2

    li    $v0, 4                               # display result prompt 
    la    $a0, result_prompt
    syscall

    li    $v0, 1                               # print the product
    move  $a0, $s2              
    syscall

    li    $v0, 4                               # display newline
    la    $a0, newline
    syscall

    li      $v0, 10                            # terminate the program
    syscall 


read_input_func:                               # function to input the two numbers from user and check if they are in range

    while:
        li $v0, 5                              # read input integer from user
        syscall
        move $t0, $v0

        bgt $t0, 32767, re_input               # if input is greater than 32767, prompt user to re-enter the input
        blt $t0, -32768, re_input              # if input is less than -32768, prompt user to re-enter the input

        j endwhile                             # if input is in range, break the loop

    re_input:     
        li $v0, 4                              # prompt user to re-enter the input
        la $a0, error_prompt
        syscall
        j while

    endwhile:                                  
        move $v0, $t0                          # return the input to the caller function
        jr $ra                                 # return from the function


multiply_booth:     # function to multiply two numbers using Booth's Algorithm

    # M => a0                                  (Mutiplicand is stored in register $a0)
    # Q => a1                                  (Multiplier is stored in register $a1)
    # A => t0                                  (Accumulator is stored in register $t0)
    # n => t1                                  (Number of bits in the input is stored in register $t1)
    # Q_-1 => t2                               (the value of the extra bit Q-1 is stored in register $t2)

    # Initialise A, n, Q_-1
    move $t2, $zero                             # Initialize Q_-1 to 0
    li $t1, 32                                  # no of bits of input = 32
    move $t0, $zero                             # Initialize A to 0

    mult_loop:
        andi $t3, $a1, 1                         # bitwise AND of Q and 1 will give the LSB of Q (denoted by Q_0) -> store it in $t3
        beq  $t3, $t2, arith_right_shift         # case when the bits Q_0, Q_-1 are (0, 0) or (1, 1)  => directly right shift the bits      

        beq  $t2, $zero, subtract_case           # case when Q_0, Q_-1 are (1, 0) resp
        beq  $t2, 1, add_case                    # case when Q_0, Q_-1 are (0, 1) resp
    
    subtract_case:                         
        sub  $t0, $t0, $a0                       # A <- A - M
        j   arith_right_shift
        

    add_case:                          
        add  $t0, $t0, $a0                       # A <- A + M
        j   arith_right_shift

    arith_right_shift:

        andi $t3, $a1, 1                         # bitwise AND of Q and 1 -> gives LSB of Q (Q_0) -> store it in $t3
        move $t2, $t3                            # Q_-1 <- Q_0 (as we are doing Arithmetic Right Shift of AQQ_1  by 1 bit,
                                                 #  so Q_-1 gets LSB of Q

        srl  $a1, $a1, 1                         # logical right shift of Q by 1 bit 
        andi $t4, $t0, 1                         # store LSB of A (A_0) in $t4 
        sll  $t4, $t4, 31                        # logical left shift of A_0 by 31 bits -> shifts A_0 (LSB of A) in the MSB of $t4 followed by 31 zeros
        or   $a1, $a1, $t4                       # OR of $t4 (A_0 followed by 31 zeros) and $a1 (Q) makes the LSB of A the MSB of the right shifted Q

        sra  $t0, $t0, 1                         # arithmetic right shift of A by 1 bit 

        sub  $t1, $t1, 1                         # decrement n by 1

        bgt  $t1, $zero, mult_loop               # continue with the multiplication loop while n > 0

        move $v0, $a1                            # if n == 0, exit the loop, return the result in $v0
        jr   $ra                                 # return to from the function 
