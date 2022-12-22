# Assignment 2, Question 3
# Group 63
# Pranav Nyati - 20CS30037
# Shreyas Jena - 20CS30049

.globl main

# Data segment
.data
    m_input_prompt:                                                     # Prompt for reading m as input
        .asciiz "Enter a positive integer m :"
    n_input_prompt:                                                     # Prompt for reading n as input
        .asciiz "Enter a positive integer n :"                          
    a_input_prompt:                                                     # Prompt for reading a as input
        .asciiz "Enter a positive integer a :"                          
    r_input_prompt:                                                     # Prompt for reading r as input
        .asciiz "Enter a positive integer r :"                          
    m_lezero_message:                                                   # Error message for m <= 0
        .asciiz "m should be greater than 0, please try again!\n"
    n_lezero_message:                                                   # Error message for n <= 0
        .asciiz "n should be greater than 0, please try again!\n"
    a_lezero_message:                                                   # Error message for a <= 0
        .asciiz "a should be greater than 0, please try again!\n"
    r_lezero_message:                                                   # Error message for r <= 0
        .asciiz "r should be greater than 0, please try again!\n"
    A_output:                                                           # Message for displaying elements of matrix A
        .asciiz "Printing the elements of matrix A :\n"
    space:                                                              # Message for displaying elements of matrix A
        .asciiz " "
    B_output:                                                           # Message for displaying elements of matrix B
        .asciiz "Printing the elements of matrix B :\n"
    newline:                                                            # Message for displaying newline
        .asciiz "\n"


# Code segment
.text

# main function
main:
# m = $s0
# n = $s1
# a = $s2
# r = $s3
# starting address of matrix A = $s4
# starting address of matrix B = $s5

    jal initStack                   # Initialize stack

    input_m:
    la $a0, m_input_prompt          # print "Enter a positive integer m : "
    li $v0, 4
    syscall

    li $v0, 5                       # read value of m
    syscall
    blez $v0, m_lezero              # if m <= 0, print error message and exit
    move $s0, $v0

    input_n:
    la $a0, n_input_prompt          # print "Enter a positive integer n : "
    li $v0, 4
    syscall

    li $v0, 5                       # read value of n
    syscall
    blez $v0, n_lezero              # if n <= 0, print error message and exit
    move $s1, $v0

    input_a:
    la $a0, a_input_prompt          # print "Enter a positive integer a : "
    li $v0, 4
    syscall

    li $v0, 5                       # read value of a
    syscall
    blez $v0, a_lezero              # if a <= 0, print error message and exit
    move $s2, $v0

    input_r:
    la $a0, r_input_prompt          # print "Enter a positive integer r : "
    li $v0, 4
    syscall

    li $v0, 5                       # read value of r
    syscall
    blez $v0, r_lezero              # if r <= 0, print error message and exit
    move $s3, $v0

    malloc_stack_A:
    mul $a0, $s0, $s1               # a0 = m * n
    jal mallocInStack               # call mallocInStack to allocate memory for matrix A
    move $s4, $v0                   # $s4 <= $v0 = starting address of matrix A

    malloc_stack_B:
    jal mallocInStack               # call mallocInStack to allocate memory for matrix B
    move $s5, $v0                   # $s5 <= $v0 = starting address of matrix B

    move $t2, $s4                   # for populating matrix A, we also store its starting address in temporary register $t2
    move $t3, $a0                   # store value m*n in $t3

    # i = $t0
    # term = $t1
    # current address of matrix A = $t2
    # m*n = $t3

    move $t1, $s2                                   # term = A[0] = a
    li $t0, 0                                       # i = 0

    # populate the matrix A with terms of the GP series 
    populate_loop:
    bge $t0, $t3, end_populate_loop

    push_values:
        move $a0, $t1                               # term => first argument to pushToStack function
        move $a1, $t2                               # current address of matrix A => second argument to pushToStack function
        jal pushToStack
        move $t2, $a1                               # store new address pointed to by $a1 in $t2
        mul $t1, $t1, $s3                           # term = term * r
        addi $t0, $t0, 1                            # i = i + 1
        b populate_loop

    end_populate_loop:

        subu $s4, $s4, 4                            # $s4 = $s4 - 4  (since, 1st populated value is stored from starting address of matrix A + 4 onwards)
        move $a2, $s4                               # $a2 = $s4 (3rd argument to printMatrix and transposeMatrix)
        la $a0, A_output                            # print "Printing the elements of matrix A\n"
        li $v0, 4
        syscall

    print_matrix_A:
        move $a0, $s0                               # $a0 = $s0 = m (1st argument to printMatrix and transposeMatrix)
        move $a1, $s1                               # $a1 = $s1 = n (2nd argument to printMatrix and transposeMatrix)
        jal printMatrix                             # print matrix A

    compute_transpose:
        subu $s5, $s5, 4                            # $s5 = $s5 - 4  (since, 1st value is to be stored from starting address of matrix B + 4 onwards)
        move $a3, $s5                               # $a3 = $s5 (4th argument to transposeMatrix)
        jal transposeMatrix                         # compute transpose of matrix A and store in matrix B

        la $a0, B_output                            # print "Printing the elements of matrix B\n"
        li $v0, 4
        syscall

    # Since we will print transpose matrix, we will use n as $a0 and m as $a1
    print_matrix_B:
        move $a0, $s1                               # $a0 = $s1 = n (1st argument to printMatrix)
        move $a1, $s0                               # $a1 = $s0 = m (2nd argument to printMatrix)
        move $a2, $s5                               # $a2 = $s5 = address of matrix B (3rd argument to printMatrix)
        jal printMatrix                             # print matrix B

    j exit                                          # jump to exit

# function to initialize stack
initStack:
    addi $sp, $sp, -4
    sw $fp, ($sp)
    move $fp, $sp
    jr $ra                                          # return to caller function

# function to push elements in stack
pushToStack:

# $a0 = value to be pushed in the stack
# $a1 = points to current element in the stack

    addi $a1, $a1, -4                               # $a1 = $a1 - 4 (make space for new element in stack)
    sw $a0, ($a1)                                   # store $a0 at the current location pointed to by $a1 in stack
    jr $ra                                          # return to caller function

# function to allocate memory for stack
mallocInStack:
    mul $t0, $a0, 4                                # $t0 <-- 4 * m * n
    move $v0, $sp                                   # store starting address of m*n array ($sp) in $v0
    sub $sp, $sp, $t0                               # sp <-- sp - 4 * m * n (to allocate space for m*n integers)  
    jr $ra                                          # return to caller function


# function to print matrix
printMatrix:

# m = $a0
# n = $a1
# starting address of array = $a2
# i = $t0
# j = $t1
# current address of array = $t2

# since arguments passed are not callee-saved, we have to save them in stack and retrieve them at the end
    subu $sp, $sp, 32                                   # stack frame is 32 bytes long
    sw $ra, 20($sp)                                     # store return address in stack frame
    sw $fp, 16($sp)                                     # store frame pointer in stack frame
    sw $a0, 12($sp)                                     # store value of m in stack frame (as $a0 is caller-saved and will be reused)
    sw $a1, 8($sp)                                      # store value of n in stack frame (as $a1 is caller-saved and will be reused)
    sw $a2, 4($sp)                                      # store starting address of A[m*n] in stack frame 
    addiu $fp, $sp, 28                                  # frame pointer is now at 28 bytes from the top of the stack

    li $t0, 0                                           # i = 0
    print_outer_loop:

        bge $t0, $a0, end_print_outer_loop                    # if i >= m, then exit              
        li $t1, 0                                       # j = 0
        print_inner_loop:
            bge $t1, $a1, end_print_inner_loop               # if j>= n, then exit
            mul $t2, $t0, $a1                           # $t2 <-- i * n (value stored)
            add $t2, $t2, $t1                           # $t2 <-- i * n + j (value stored)
            mul $t2, $t2, 4                             # $t2 <-- 4 * (i * n + j) (since, each integer occupies 4 bytes)
            subu $t2, $a2, $t2                          # $t2 <-- stores (starting address of m*n array + i * n + j)  (now, address stored)

            lw $a0, ($t2)                               # $a0 <-- A[i][j]
            li $v0, 1                                   # print A[i][j]
            syscall
            
            la $a0, space                               # print " "
            li $v0, 4
            syscall

            addi $t1, $t1, 1                            # j++
            b print_inner_loop
            
        end_print_inner_loop:
            la $a0, newline                             # print "\n" after each row is finished printing
            li $v0, 4
            syscall
            lw $a0, 12($sp)                             # reinitialize $a0 to value of m

            addi $t0, $t0, 1                            # i++
            b print_outer_loop

    end_print_outer_loop:
        lw $ra, 20($sp)                                  # restore return address
        lw $fp, 16($sp)                                  # restore frame pointer
        lw $a0, 12($sp)                                  # restore value of m
        lw $a1, 8($sp)                                   # restore value of n
        lw $a2, 4($sp)                                   # restore starting address of A[m*n]
        addiu $sp, $sp, 32                               # remove stack frame
        jr $ra                                           # return to caller function

# function to transpose given matrix
transposeMatrix:

# m = $a0
# n = $a1
# starting address of array A = $a2
# starting address of array B = $a3
# i = $t0
# j = $t1
# current address of array A = $t2
# current address of array B = $t3

# since arguments passed are not callee-saved, we have to save them in stack and retrieve them at the end
    subu $sp, $sp, 32                                   # stack frame is 32 bytes long
    sw $a3, 24($sp)                                     # store address of matrix B in stack frame   
    sw $ra, 20($sp)                                     # store return address in stack frame
    sw $fp, 16($sp)                                     # store frame pointer in stack frame
    sw $a0, 12($sp)                                     # store value of m in stack frame (as $a0 is caller-saved and will be reused)
    sw $a1, 8($sp)                                      # store value of n in stack frame (as $a1 is caller-saved and will be reused)
    sw $a2, 4($sp)                                      # store address of matrix A in stack frame
    addiu $fp, $sp, 28                                  # frame pointer is now at 28 bytes from the top of the stack

    li $t0, 0                                           # i = 0
    tr_outer_loop:

        bge $t0, $a0, end_tr_outer_loop              # if i >= m, then exit outer loop           
        li $t1, 0                                       # j = 0

        tr_inner_loop:
            bge $t1, $a1, end_tr_inner_loop          # if j>= n, then exit inner loop
            mul $t2, $t0, $a1                           # $t2 <-- i * n (value stored)
            add $t2, $t2, $t1                           # $t2 <-- i * n + j (value stored)
            mul $t2, $t2, 4                             # $t2 <-- 4 * (i * n + j) (since, each integer occupies 4 bytes)
            subu $t2, $a2, $t2                          # $t2 <-- stores (starting address of array A + i * n + j)  (now, address stored)

            mul $t3, $t1, $a0                           # $t3 <-- j * m (value stored)
            add $t3, $t3, $t0                           # $t3 <-- j * m + i (value stored)
            mul $t3, $t3, 4                             # $t3 <-- 4 * (j * m + i) (since, each integer occupies 4 bytes)
            subu $t3, $a3, $t3                          # $t3 <-- stores (starting address of array B + j * m + i)  (now, address stored)

            lw $t4, ($t2)                               # $t4 <-- A[i*n + j]
            sw $t4, ($t3)                               # B[j*m + i] = A[i*n + j]

            addi $t1, $t1, 1                            # j++
            b tr_inner_loop
            
        end_tr_inner_loop:
        
            addi $t0, $t0, 1                            # i++
            b tr_outer_loop

    end_tr_outer_loop:
        lw $a3, 24($sp)                                  # restore address of matrix B
        lw $ra, 20($sp)                                  # restore return address
        lw $fp, 16($sp)                                  # restore frame pointer
        lw $a0, 12($sp)                                  # restore value of m
        lw $a1, 8($sp)                                   # restore value of n
        lw $a2, 4($sp)                                   # restore starting address of A[m*n]
        addiu $sp, $sp, 32                               # remove stack frame

        jr $ra                                           # return to caller function

m_lezero:
        la $a0, m_lezero_message                        # print error message for m <= 0
        li $v0, 4
        syscall
        b input_m

n_lezero:
        la $a0, n_lezero_message                        # print error message for n <= 0
        li $v0, 4
        syscall
        b input_n

a_lezero:
        la $a0, a_lezero_message                        # print error message for a <= 0
        li $v0, 4
        syscall
        b input_a

r_lezero:
        la $a0, r_lezero_message                        # print error message for r <= 0
        li $v0, 4
        syscall
        b input_r

exit:
        li $v0, 10                                      # exit
        syscall
