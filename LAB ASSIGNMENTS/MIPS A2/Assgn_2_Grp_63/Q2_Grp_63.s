# Assn-2, Ques 2
# Group-63
# Pranav Nyati (Roll : 20CS30037)
# Shreyas Jena (Roll : 20CS30049)

# This program inputs 10 integers from the user, sorts it in ascending order using bubble-sort
# It then takes k (an integer input) from user and returns the kth largest element in the array

    .globl main

    .data

array:      # allocate 40 contiguous bytes of memory for storing 10 integers
    .space 40
input_prompt:
    .asciiz "Enter 10 integers one after the other: \n"
int_input_prompt:
    .asciiz "Enter an integer: \n"
input_k:
    .asciiz "Enter the value of k: \n"
error_prompt:
    .asciiz "Error: The value of k entered is out of bounds. Please enter an integer k between 1 and 10: \n"
result_prompt:
    .asciiz "The kth largest element in the array is: "
print_prompt:
    .asciiz "Array of integers before sorting: \n"
space:
    .asciiz " "
print_prompt_sorted:
    .asciiz "The array of integers after sorting is : \n"
newline:
    .asciiz "\n"

    .text

# main
main:

    li      $s0, 10              # load n = 10 in s0
    
    move    $a0, $s0            # move value of n to a0
    la      $a1, array          # load address of array to a1
    jal     array_input_func

    li      $v0, 4
    la      $a0, print_prompt
    syscall

    move    $a0, $s0            # move value of n to a0
    la      $a1, array          # load address of array to a1
    jal     print_array_func    # print input array

    move    $a0, $s0            # move value of n to a0
    la      $a1, array          # load address of array to a1
    jal     sort_array_func     # sort input array

    li      $v0, 4
    la      $a0, print_prompt_sorted
    syscall

    move    $a0, $s0            # move value of n to a0
    la      $a1, array          # load address of array to a1
    jal     print_array_func    # print sorted array

    jal k_input_func

    move $a0, $v0               # move value of k to a0
    la $a1, array               # load address of array to a1

    jal k_largest_func          # find kth largest element in array
    move  $s1, $v0               # move value of kth largest element to s1

    li      $v0, 4
    la      $a0, result_prompt
    syscall

    li     $v0, 1
    move   $a0, $s1             # move value of kth largest element to a0
    syscall

    li     $v0, 4
    la     $a0, newline
    syscall

    li      $v0, 10         # terminate the program
    syscall 
    
array_input_func:

    move     $t0, $a0                          # move value of n from a0 to t0
    move     $t1, $a1                          # move address of array(stored in a1) to t1
    
    li      $v0, 4                            # Input prompt for entering integers
    la      $a0, input_prompt
    syscall
    input_loop:
        li      $v0, 4                            # Input prompt for entering integers
        la      $a0, int_input_prompt
        syscall

        li      $v0, 5                            # User input for integer
        syscall
        move    $s1, $v0

        sw      $s1, 0($t1)                       # store the integer in the array in the ith index
        addi    $t1, $t1, 4                       # increment the address in $t1 by 4 bytes to reference next element in array
        addi    $t0, $t0, -1                      # i = i - 1
        bne     $t0, $zero, input_loop            # if i != 0, continue looping
        jr     $ra                                 # return from function the function user 

print_array_func:
    move     $t0, $a0                          # move value of n from a0 to t0
    move     $t1, $a1                          # move address of array(stored in a1) to t1
    print_loop:
        lw    $a0, 0($t1)                     # print ith integer
        li      $v0, 1                       
        syscall

        li      $v0, 4
        la      $a0, space
        syscall
        
        addi    $t1, $t1, 4                  # increment the address in $t1 by 4 bytes to reference next element in array
        addi    $t0, $t0, -1                 # decrement the number of integers left to input by 1
        bne     $t0, $zero, print_loop       # if i!= 0, conntinue printing integers
                 
        li      $v0, 4                       # if i == 0, exit loop and return from function
        la      $a0, newline
        syscall
        jr      $ra                           # return from print function

sort_array_func:
    move     $t0, $a0                          # move value of n from a0 to t0
    move     $t1, $a1                          # move address of array(stored in a1) to t1
    move     $s4, $ra	                       # store the return address temporarily in  register s4 as the return value may be overwritten in subsequent SWAP calls
	
    sub     $t0, $t0, 1                       # n <= n-1
    li      $t2, 0                            # index i = 0

    loop_i:
        bge    $t2, $t0, end_loop_i          # if i >= n-1, exit loop_i

        sub    $t3, $t0, $t2                  # j_max for inner loop = n-1-i;
        li     $t4, 0                         # index j = 0;
        move   $t5, $t1                       # pointer to array moved from $t1 to $t5

        loop_j:
            lw $t6, 0($t5) # load the jth element of array into $t6
            move $a0, $t5  # move the address of jth element of array to $a0 (1st arg for sort func)
            addi $t5, $t5, 4 # increment the address in $t5 by 4 bytes to refer to (j+1)th element of array
            lw $t7, 0($t5) # load the (j+1)th element of array into $t7
            move $a1, $t5  # move the address of (j+1)th element of array to $a1 (2nd arg for sort func)
            ble $t6, $t7, loop_condition   # if arr(j) <= arr(j+1), continue loop_j
            jal swap_func

            loop_condition:
                add $t4, $t4, 1         # increment the index j by 1
                blt $t4, $t3, loop_j   # if j < j_max, continue looping
                add $t2, $t2, 1 # if j >+ j_max, increment the index i by 1
                j loop_i

    end_loop_i:
    	move    $ra, $s4
        jr      $ra     # return from sort function

swap_func:
    lw    $s2, 0($a0)                          # move value of jth element of array to t6
    lw    $s3, 0($a1)                          # move address of (j+1)th element of array to t7

    sw    $s2, 0($a1)                          # store the jth element of array in (j+1)th index of array
    sw    $s3, 0($a0)                          # store the (j+1)th element of array in jth index of array

    jr    $ra                                  # return from swap function

k_input_func:
    li      $v0, 4                             # Input prompt for entering integers
    la      $a0, input_k
    syscall

    while:
        li      $v0, 5
        syscall
        move $s1, $v0

        bgt $s1, $s0 , re_input                # if k is greater than n, go to re_input
        ble $s1, $zero, re_input               # if k is less than or equal to 0, go to re_input

        j endwhile

    re_input:
        li      $v0, 4                         # Show error prompt to user
        la      $a0, error_prompt
        syscall
        j while

    endwhile:
        move    $v0, $s1         # return the value of k
        jr      $ra

k_largest_func:
    move $t0, $a0                               # move value of k from a0 to t0
    move $t1, $a1                               # move address of array(stored in a1) to t1

    sub  $t2, $s0, $t0                          # t2 stores the values of n-k
    mul  $t2, $t2, 4                            # t2 stores the values of n-k * 4
    add  $t1, $t1, $t2                         # val(t1) = val(t1) + (n-k * 4)
    lw   $v0, 0($t1)                           # load the value of kth largest element of array into $v0

    jr   $ra                                    # return from k_largest_func
