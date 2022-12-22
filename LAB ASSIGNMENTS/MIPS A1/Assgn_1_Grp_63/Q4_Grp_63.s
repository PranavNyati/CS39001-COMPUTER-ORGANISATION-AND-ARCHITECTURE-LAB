# Assn-1, Ques 4
# Group-63
# Pranav Nyati (Roll : 20CS30037)
# Shreyas Jena (Roll : 20CS30049)

# This program takes a positive integer as input from the user, does a sanity check on the input (that it is a positive integer),
# and checks if the input integer is a perfect number or not

# A perfect number is a number that is equal to the sum of its proper divisors.

    .data

prompt_to_usr:  
    .asciiz "Enter a positive integer:"
output_str_1:
    .asciiz "Entered number is a PERFECT number."
output_str_2:
    .asciiz "Entered number is not a PERFECT number."
error_prompt:
    .asciiz "Error: The entered number is not a positive integer. Please enter a positive integer as input."

    .text
    .globl main

main:

    li      $v0, 4   # for displaying the prompt to the user to enter a positive integer
    la      $a0, prompt_to_usr
    syscall

    li      $v0, 5   # for taking a positive integer as input from the user
    syscall
    move    $s0, $v0   # the input positive integer is stored in register s0  

    # check if the input is a positive integer
    ble     $s0, $zero, correct_input

    bgt     $s0, $zero, process

correct_input:
    li      $v0, 4   # for displaying the error prompt to the user
    la      $a0, error_prompt
    syscall
    
    li      $v0, 5     # for taking a positive integer as input from the user
    syscall
    move    $s0, $v0   # the input positive integer is stored in register s0  

    ble     $s0, $zero, correct_input    # if integer input by user is not a positive integer
    bgt     $s0, $zero, process       # if the integer input by the user is a positive integer, direct it to the process label

process:    

    li      $t0, 2       
    div     $s0, $t0    # obtaining the value of n/2, where n is the positive integer input by user
    mflo    $s1         # storing n/2 in $s1

    li      $s2, 1      # iterator i = 1
    li      $s3, 0      # for storing the sum of proper divisors of n
    b       for_loop

# loop to iterate through all the numbers from 1 to n/2 and check if the number is a proper divisor of n
for_loop:
    bgt     $s2, $s1, output
    div     $s0, $s2    # dividing n by the current number i
    mfhi    $t0
    beq     $t0, $zero, is_proper_divisor # if the number divides n, then we direct it to the is_proper_divisor label
    add     $s2, $s2, 1       # i++
    b       for_loop

is_proper_divisor: 
    add     $s3, $s3, $s2    # adding the current number to the sum of proper divisors
    add     $s2, $s2, 1       # i++
    b       for_loop          # back to the for_loop label

output:

    beq    $s0, $s3, is_perfect   # if the number is a perfect number

    # case when the number is not perfect
    li      $v0, 4              
    la      $a0, output_str_2  
    syscall
    
    b       end_program

is_perfect:

    li      $v0, 4   
    la      $a0, output_str_1
    syscall
    
    b       end_program

end_program:

    li      $v0, 10         # terminate the program
    syscall
    

    
