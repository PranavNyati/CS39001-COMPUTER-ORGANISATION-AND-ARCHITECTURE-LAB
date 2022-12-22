# Assn-4, Ques-1 (Recursive Determinant)
# Group-63
#  Pranav Nyati (Roll: 20CS30037)
#  Shreyas Jena (Roll: 20CS30049)

# Data Segment
    .data

    n_input_prompt:                                                     # Prompt for reading n as input
        .asciiz "Enter a positive integer n :"                          
    a_input_prompt:                                                     # Prompt for reading a as input
        .asciiz "Enter a positive integer a :"                          
    r_input_prompt:                                                     # Prompt for reading r as input
        .asciiz "Enter a positive integer r :"                          
    m_input_prompt:                                                     # Prompt for reading m as input
        .asciiz "Enter a positive integer m :"
    n_lezero_message:                                                   # Error message for n <= 0
        .asciiz "n should be greater than 0, please try again!\n"
    a_lezero_message:                                                   # Error message for a <= 0
        .asciiz "a should be greater than 0, please try again!\n"
    r_lezero_message:                                                   # Error message for r <= 0
        .asciiz "r should be greater than 0, please try again!\n"
    m_lezero_message:                                                   # Error message for m <= 0
        .asciiz "m should be greater than 0, please try again!\n"
    mat_output:                                                         # Message for displaying elements of matrix A
        .asciiz "Printing the elements of matrix :\n"
    det_output:                                                         # Message for displaying the determinant of A
        .asciiz "The determinant of matrix is : " 
    space:                                                              # space
        .asciiz " "
    newline:                                                            # newline
        .asciiz "\n"

# Code Segment

    .text
    .globl main

# Main function

# 0($s0) stores the address in $fp
# -4($s0) stores value of n
# -8($s0) stores value of a
# -12($s0) stores value of r
# -16($s0) stores value of m

main:   
    jal     initStack                           # call initStack
    move    $s0, $sp                            # As $fp = $sp after initStack, this stores frame pointer to $s0
                                                # this will now be used as reference for accessing other saved values in stack

    input_n:

    li      $v0, 4                              # $v0 <-- 4 (for printing string)
    la      $a0, n_input_prompt                 # Load address of n's input prompt in $a0
    syscall                                     # print n's prompt

    li      $v0, 5                              # $v0 <-- 5 (for input no.)
    syscall                                     # read n
    blez    $v0, n_lezero                       # if n <= 0, print error message

    move    $a0, $v0                            # $a0 = n (argument for pushStack)
    jal     pushStack                           # push n on stack

    input_a:
    
    li      $v0, 4                              # $v0 <-- 4 (for printing string)
    la      $a0, a_input_prompt                 # Load address of a's input prompt in a0
    syscall                                     # print a's prompt

    li      $v0, 5                              # $v0 <-- 5 (for input no.)
    syscall                                     # read a
    blez    $v0, a_lezero                       # if a <= 0, print error message

    move    $a0, $v0                            # $a0 = a (argument for pushStack)
    jal     pushStack                         # push a on stack

    input_r:
    
    li      $v0, 4                              # $v0 <-- 4 (for printing string)
    la      $a0, r_input_prompt                 # Loads address of r's input prompt in a0
    syscall                                     # print r's prompt

    li      $v0, 5                              # $v0 <-- 5 (for input no.)
    syscall                                     # read r
    blez    $v0, r_lezero                       # if r <= 0, print error message

    move    $a0, $v0                            # $a0 = argument for pushStack function, $v0 stores r
    jal     pushStack                           # push r on stack

    input_m:
    
    li      $v0, 4                              # $v0 <-- 4 (for printing string)
    la      $a0, m_input_prompt                 # Loads address of m's input prompt in a0
    syscall                                     # print m's prompt

    li      $v0, 5                              # $v0 <-- 5 (for input no.)
    syscall                                     # read m
    blez    $v0, m_lezero                       # if m <= 0, print error message

    move    $a0, $v0                            # $a0 = argument for pushStack function, $v0 stores m
    jal     pushStack                         # push m on stack


# Now, n*n bytes of space must be allocated for matrix A on the stack.
# call malloc_stack to allocate space and then populate matrix.
    malloc_stack:

    lw      $t0, -4($s0)                        # $t0 <-- n
    mul     $a0, $t0, $t0                       # $a0 <-- n * n
    jal     mallocStack                         # call mallocStack
    move    $s1, $v0                            # $s1 <-- starting address of matrix

    populate_begin: 

    lw      $t0, -4($s0)                        # $t0 <-- n
    mul     $t1, $t0, $t0                       # $t1 <-- n * n
    move    $t2, $s1                            # $t2 = stores address of current element of matrix
    li      $t3, 0                              # $t3 = i (i=0)
    lw      $t4, -8($s0)                        # $t4 = a (term)
    lw      $t5, -12($s0)                       # $t5 = r
    lw      $t6, -16($s0)                       # $t6 = m
    div     $t4, $t6                            # compute a/m
    mfhi    $t4                                 # $t4 <-- a%m


# populate matrix A such that A[i] = (a * r^i) % m
    populate_loop:

    bge     $t3, $t1, end_populate_loop         # if i >= n * n, jump to end_populate_loop
    sw      $t4, 0($t2)                         # A[0] <-- a%m
    mul     $t4, $t4, $t5                       # term <-- term * r
    lw      $t6, -16($s0)                       # $t6 <-- m
    div     $t4, $t6                            # compute term / m
    mfhi    $t4                                 # $t4 <-- term % m
    addi    $t2, $t2, -4                        # decrement $t2 by 4 to point to get next matrix element
    addi    $t3, $t3, 1                         # i = i + 1
    j populate_loop                            


    end_populate_loop:  

    li      $v0, 4                              # $v0 <-- 4 (for printing string)
    la      $a0, mat_output                     # Loads address of mat_output in a0
    syscall                                     # print mat_output on the console


    print_matrix:

    lw      $a0, -4($s0)                        # $a0 = n
    move    $a1, $s1                            # $a1 = address of first element of A
    jal     printMatrix                         # call the printMatrix function with $a0, $a1, $a2 as arguments


    compute_determinant:

    lw    $a0, -4($s0)                          # $a0 = n
    move  $a1, $s1                              # $a1 = address of first element of matrix A
    jal   determinant                           # call the recursive_Det function with $a0, $a1 as arguments

    print_determinant:

    move    $t0, $v0                            # $t0 = $v0, $v0 stores determinant of A.
    li      $v0, 4                              # $v0 <-- 4 (for printing string)
    la      $a0, det_output                     # Loads address of det_output in a0
    syscall                                     # print det_output

    move    $a0, $t0                            # a0 <-- det(A)
    la      $v0, 1                              # $v0 <-- 1 (for print no.)
    syscall                                     # print det(A)

    li      $v0, 4                              # $v0 <-- 4 (for printing string)
    la      $a0, newline                        # Loads address of newline in a0
    syscall                                     # print newline

    free_stack: 
    move    $sp, $fp                            # restore stack pointer to original value
    j       exit                                # jump to exit


# Start of function definitions
# function to initialize stack
initStack:
    addi    $sp, $sp, -4                        # Stack pointer decreased by 4
    sw      $fp, 0($sp)                         # Store $fp in stack
    move    $fp, $sp                            # Make $fp point to current stack top
    jr      $ra                                 # return to caller fn


# function to push element into stack top
pushStack:
    addi    $sp, $sp, -4                        # Subtract 4 from stack pointer
    sw      $a0, 0($sp)                         # push input value in stack
    jr      $ra                                 # return to caller fn


# function to pop element from stack top
popStack:
    addi    $sp, $sp, 4                         # Add 4 to stack pointer, this frees memory for the top element
    jr      $ra                                 # return to caller fn


# Function to allocate memory for n * n integers on stack
mallocStack:
    sll     $t0, $a0, 2                         # $t0 <-- 4* n * n (offset)
    addi    $v0, $sp, -4                        # return starting address = ($sp - 4 bytes) in $v0 register
    sub     $sp, $sp, $t0                       # Subtract 4*n*n bytes from stack pointer to allocate space 
    jr      $ra                                 # return to caller fn


# function to print matrix
printMatrix:

# n = $a0
# starting address of array = $a1
# i = $t0
# j = $t1
# current address of array = $t2
# temporary storage for n = $t3

    li $t0, 0                                           # i = 0
    move $t3, $a0                                       # store value of n in register $t3

    print_outer_loop:

        bge $t0, $t3, end_print_outer_loop              # if i >= n, then exit              
        li $t1, 0                                       # j = 0
        print_inner_loop:
            bge $t1, $t3, end_print_inner_loop          # if j >= n, then exit
            mul $t2, $t0, $t3                           # $t2 <-- i * n (value stored)
            add $t2, $t2, $t1                           # $t2 <-- i * n + j (value stored)
            mul $t2, $t2, 4                             # $t2 <-- 4 * (i * n + j) (since, each integer occupies 4 bytes)
            sub $t2, $a1, $t2                          # $t2 <-- stores (starting address of n*n array + i * n + j)  (now, address stored)

            lw $a0, ($t2)                               # $a0 <-- A[i][j]
            li $v0, 1                                   # print A[i][j]
            syscall
            
            la $a0, space                               # print " "
            li $v0, 4
            syscall

            addi $t1, $t1, 1                            # j++
            j print_inner_loop
            
        end_print_inner_loop:
            la $a0, newline                             # print "\n" after each row is finished printing
            li $v0, 4
            syscall

            addi $t0, $t0, 1                            # i++
            j print_outer_loop

    end_print_outer_loop:
        jr $ra                                           # return to caller function
        

# function to print determinant of n*n matrix recursively
determinant:

# since recursive calls will change values of registers,
# imp. values are saved in the stack at start to prevent loss of necessary values

    move    $t0, $ra                            # $t0 <-- $ra
    jal     pushStack                         # push n (size of orig mtx) to stack

    move    $a0, $a1                            # $a0 <-- $a1 (starting address of orig mtx)
    jal     pushStack                         # push start addr of orig mtx to stack

    move    $a0, $t0                            # $a0 <-- ra
    jal     pushStack                         # push return addr to stack

    li      $t0, 1                              # $t0 <-- 1
    lw      $t1, 8($sp)                         # $t1 <-- n
    bne     $t0, $t1, not_base_case             # if n != 1, jump to not_base_case and handle general case

    # if base case (n==1), 
    # return det(A) = A[0][0]

    lw      $v0, 0($a1)                         # $v0 <-- start element of orig matrix 
    lw      $ra, 0($sp)                         # restore return address from stack
    addi    $sp, $sp, 12                        # pop 3 elements from stack
    jr      $ra                                 # return to caller fn

not_base_case:
   
    li      $v0, 0                              # $v0 <-- determinant value
    move    $a0, $v0                            # $a0 = $v0
    jal     pushStack                         # push $a0 to stack

    li      $t0, 1                              # $t0 <-- sign (initially 1)
    move    $a0, $t0                            # $a0 <-- $t0
    jal     pushStack                         # push $a0 to stack

    lw      $t2, 16($sp)                        # $t2 <-- n
    li      $t0, 0                              # $t0 <-- loop_counter (j) (stores idx of column to be ignored while computing determinant of minor mtx)

# iterate over loop_counter
det_loop: 

    beq     $t0, $t2, end_det_loop              # if j == n, determinant computed, jump to end_det_loop
    move    $t6, $t0                            # $t6 <-- j
    move    $a0, $t0                            # $a0 <-- j
    jal     pushStack                         # push loop counter to stack

    lw      $t7, 16($sp)                        # $t7 <-- stores current addr of orig matrix
    move    $t1, $t2                            
    addi    $t1, $t1,-1                         # $t1 <-- n-1
    mul     $t1, $t1, $t1                       # $t1 <-- (n-1)*(n-1) (i.e., size of minor mtx)

    move    $a0, $t1                            # $a0 <-- (n-1)*(n-1)
    jal     mallocStack                       # allocate space for (n-1) size minor mtx


    move    $t0, $t2                            # $t0 <-- stores n 
    move    $t1, $v0                            # $t1 <-- stores current addr of minor mtx
    li      $t2, 1                              # $t2 <-- row
    li      $t3, 0                              # $t3 <-- col
    li      $t8, -4                            
    mul     $t8, $t8, $t0                       # $t8 = -4*n (offset to point to 1st element of 2nd row in orig mtx) 
    add     $t7, $t7, $t8                       # $t7 <-- stores current addr of orig matrix 
                                                # we start with this position bcoz 1st row of orig mtx is used to compute determinant, and hence ignored

# iterate over row
row_loop:

    beq     $t2, $t0, end_row_loop              # if row == n, jump to end_row_loop
    move    $t3, $zero                          # col <-- 0

# iterate over column
col_loop:

    beq     $t3, $t0, end_col_loop              # if col == n, jump to end_col_loop
    beq     $t6, $t3, increment_col             # if col == j, jump to increment col (i.e, ignore that column)
    lw      $t4, 0($t7)                         # $t4 <-- A[row][col]
    sw      $t4, 0($t1)                         # minor[i][j] <-- A[row][col]

    addi    $t1, $t1, -4                        # $t1 <-- $t1 - 4 (go to next addr of minor mtx)
    addi    $t7, $t7, -4                        # $t7 <-- $t7 - 4 (go to next addr of orig mtx0
    addi    $t3, $t3, 1                         # col++
    j       col_loop                            # jump to col_loop

increment_col:

    addi    $t3, $t3, 1                         # col++ (ignore column = loop_counter j)
    addi    $t7, $t7, -4                        # $t7 <-- A[row][col+1]
    j       col_loop                            # jump to col_loop

end_col_loop:

    addi    $t2, $t2, 1                         # row++
    j       row_loop                            # jump to row_loop

end_row_loop:

    addi    $t0, $t0, -1                        # $t0 <-- n-1
    move    $a0, $t0                            # $a0 <-- n-1
    jal     pushStack                           # push $a0 to stack (bcoz when we call determinant fn recursively, n-1 = size of minor mtx will be lost as the register values are changed0

    move    $a0, $t0                            # $a0 <-- n-1
    move    $a1, $v0                            # $a1 <-- addr of 1st element of minor mtx
    jal     determinant                         # call determinant function recursively

    lw      $t2, 0($sp)                         # $t2 <-- n-1
    move    $t0, $t2                            # $t0 <-- n-1
    mul     $t0, $t0, $t0                       # $t0 <-- (n-1)*(n-1)
    jal     popStack                          # pop (n-1) from stack

    sll     $t0, $t0, 2                         # $t0 <-- 4*(n-1)*(n-1) (size of minor mtx0
    add     $sp, $sp, $t0                       # free minor mtx from stack

# now, we calculate the new values of loop_counter, sign and determinant.
# For that, we first pop old values from stack and calculate new values
# Finally, we push the new values into stack

    lw      $t0, 0($sp)                         # $t0 <-- loop_counter
    jal     popStack                        # pop loop counter from stack

    lw      $t1, 0($sp)                         # $t1 <-- sign
    jal     popStack                        # pop sign from stack

    lw      $t3, 0($sp)                         # $t3 <-- determinant value
    jal     popStack                        # pop determinant value from stack

    mul     $t4, $v0, $t1                       # $t4 <-- determinant(minor, n-1) * sign

    lw      $t5, 4($sp)                         # $t5 <-- start addr of orig mtx
    move    $t6, $t0                            # $t6 <-- j(loop counter)
    li      $t8, -4                            
    mul     $t6, $t6, $t8                       # $t6 <-- -4*j
    add     $t5, $t5, $t6                       # $t5 <-- addr of mat[j]
    lw      $t5, 0($t5)                         # $t5 <-- mat[j]

    mul     $t4, $t4, $t5                       # $t4 <-- determinant(minor, n-1) * sign * mat[j] (i.e., cofactor)
    add     $t4, $t4, $t3                       # det <-- det + cofactor
    move    $a0, $t4                            # $a0 <-- new det value
    jal     pushStack                         # push new det to stack
    
    li      $t8, -1                             # $t8 <-- -1
    mul     $t1, $t1, $t8                       # sign <-- -sign
    move    $a0, $t1                            # $a0 <-- -sign
    jal     pushStack                         # push new sign to stack
    
    addi    $t2, $t2, 1                         # $t2 <-- $t2 + 1
    addi    $t0, $t0, 1                         # $t0 <-- j+1
    j       det_loop                            # jump to det_loop

end_det_loop:
    jal     popStack                        # pop sign from stack
    lw      $v0, 0($sp)                         # $v0 <-- Det(A)

    jal     popStack                        # pop det value from stack
    lw      $ra, 0($sp)                         # regain original value of return address
    addi    $sp, $sp, 12                        # clear stack
    jr      $ra                                 # return to caller fn


n_lezero:
    la $a0, n_lezero_message                        # print error message for n <= 0
    li $v0, 4
    syscall
    j input_n

a_lezero:
    la $a0, a_lezero_message                        # print error message for a <= 0
    li $v0, 4
    syscall
    j input_a

r_lezero:
    la $a0, r_lezero_message                        # print error message for r <= 0
    li $v0, 4
    syscall
    j input_r

m_lezero:
    la $a0, m_lezero_message                        # print error message for m <= 0
    li $v0, 4
    syscall
    j input_m

exit:
    li $v0, 10                         
    syscall                                         # syscall for exit
    
