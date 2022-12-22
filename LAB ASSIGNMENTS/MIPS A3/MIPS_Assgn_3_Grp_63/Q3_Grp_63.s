# Assn-4, Ques 3  (Recursive Search)
# Group-63
# Pranav Nyati (Roll : 20CS30037)
# Shreyas Jena (Roll : 20CS30049)

# NOTE: Assume zero indexing for search

    .globl main

    .data

array:                                      # allocate 40 contiguous bytes of memory for storing 10 integers
    .space 40
input_prompt:                               # prompt to user to enter 10 integers
    .asciiz "Enter 10 integers one after the other: \n"
int_input_prompt:
    .asciiz "Enter an integer: \n"
print_prompt:
    .asciiz "Array of integers before sorting: \n"
space:
    .asciiz " "
print_prompt_sorted:
    .asciiz "The array of integers after sorting is : \n"
key_input_prompt:                            # prompt to user to enter the key to be searched
    .asciiz "Enter the key to be searched: \n"
key_found_prompt:                            # message to be displayed if the key is found                
    .asciiz " is FOUND in the array at index "
key_not_found_prompt:                        # message to be displayed if the key is not found                 
    .asciiz " NOT FOUND in the array.\n"
newline:
    .asciiz "\n"

    .text

# main function
main:

    li      $s0, 10                         # load n = 10 in s0
    
    move    $a0, $s0                        # move value of n to a0
    la      $a1, array                      # load address of array to a1
    jal     array_input_func                # input array of n integers from the user using array_input_func

    # input key from the user to be searched
    li      $v0, 4                            
    la      $a0, key_input_prompt           # prompt to user to enter the key to be searched
    syscall

    li      $v0, 5                          # User input for the key
    syscall
    move    $s1, $v0                        # move key to s1

    addi $sp, $sp, -4
    sw   $s1, 0($sp)                        # push key to stack

    # print the array before sorting
    li      $v0, 4
    la      $a0, print_prompt
    syscall

    move    $a0, $s0                        # move value of n to a0
    la      $a1, array                      # load address of array to a1
    jal     print_array_func                # print input array before it is sorted using print_array_func

    # function call to recursively sort the array
    move    $t0, $s0                        # move value of n to t0 
    la      $a0, array                      # load base address of array to a0
    li     $a1, 0                           # initial array index (which is zero) in a1
    sub    $a2, $t0, 1                      # move value of last index of array to a2 (right = n-1)

    jal     recursive_sort_func             # recursive sort function call

    # print the array after sorting
    li      $v0, 4
    la      $a0, print_prompt_sorted
    syscall

    move    $a0, $s0                        # move value of n to a0
    la      $a1, array                      # load address of array to a1
    jal     print_array_func                # print sorted array

    # function call to search for the key in the array
    lw  $s1, 0($sp)                         # pop key from stack and store back in s1

    la      $a0, array                      # $a0 = base address of the array
    li      $a1, 0                          # $a1 = initial index of the array (value of start)

    move   $t0, $s0                         # move value of n to t0
    addi   $a2, $t0, -1                     # $a2 = last index of the array = n-1 (value of end)

    move    $a3, $s1                        # $a3 = key to be searched
    jal     recursive_search_func           # recursive search function call to search the key in the array
    move    $s4, $v0                        # store the return value in $s4

    # print the result of the search
    lw $s1, 0($sp)                          # pop key from stack and store back in s1

    li      $v0, 1                          # print the key to be searched
    move    $a0, $s1
    syscall    

    li     $t0, -1
    bne    $s4, $t0, key_found              # if key is found, jump to key_found, else continue to key_not_found

    key_not_found:
    li      $v0, 4
    la      $a0, key_not_found_prompt       # if key is not found, print key not found message
    syscall

    j      end

    key_found:

    li      $v0, 4
    la      $a0, key_found_prompt           # if key is found, print key found message
    syscall

    li      $v0, 1                          # print the index of the key where it is found
    move    $a0, $s4
    syscall

    j end

    end:
    li     $v0, 4
    la     $a0, newline
    syscall

    add   $sp, $sp, 4                       # restore the stack pointer

    li      $v0, 10                         # terminate the program
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

recursive_sort_func:

# s0 = l    {stored at 4($sp)}
# s1 = r    {stored at 0($sp)} 
# s2 = p 

# a0 = base address of the array  {stored as 20($sp)}
# a1 = left   {stored at 16($sp)}
# a2 = right  {stored at 12($sp)}
# ra = return address  {stored at 8($sp)}

    addi $sp, $sp, -24
    sw   $a0, 20($sp)                       # save base address of array to stack
    sw   $a1, 16($sp)                       # save left to stack
    sw   $a2, 12($sp)                       # save right to stack
    sw   $ra, 8($sp)                        # save return address to stack
    sw   $s0, 4($sp)                        # save s0 to stack
    sw   $s1, 0($sp)                        # save s1 to stack

    lw   $s0, 16($sp)                       # load left as value of l
    lw   $s1, 12($sp)                       # load right as value of r
    lw   $s2, 16($sp)                       # load left as value of p

    outer_while:

        bge    $s0, $s1, return_func        # if left >= right, return from function

        inner_while1:
        lw     $t0, 12($sp)                 # store value of right to t0                     
        bge    $s0, $t0, inner_while2       # if l >= right , continue to 2nd inner while loop

        move   $t1, $a0                     # move base address of array to t1
        mul    $t2, $s0, 4                  # t2 = 4*l
        add    $t2, $t1, $t2                # t2 = Address of array[l]
        lw     $t3, 0($t2)                  # t3 = array[l]

        mul    $t2, $s2, 4                  # t2 = 4*p
        add    $t2, $t1, $t2                # t2 = Address of array[p]
        lw     $t4, 0($t2)                  # t4 = array[p]
        

        bgt    $t3, $t4, inner_while2       # if A[l] > A[p], continue to 2nd inner while loop

        addi   $s0, $s0, 1                  # increment l by 1 (l++)
        j    inner_while1                   # continue to 1st inner while loop

        inner_while2:
        
        lw     $t0, 16($sp)                 # store value of left to t0
        ble    $s1, $t0, L1                 # if r <= left, continue to label L1

        move   $t1, $a0                     # move base address of array to t1
        mul    $t2, $s1, 4                  # t2 = 4*r
        add    $t2, $t1, $t2                # t2 = Address of array[r]
        lw     $t3, 0($t2)                  # t3 = array[r]

        mul    $t2, $s2, 4                  # t2 = 4*p
        add    $t2, $t1, $t2                # t2 = Address of array[p]
        lw     $t4, 0($t2)                  # t4 = array[p]

        blt    $t3, $t4, L1                 # if A[r] < A[p], continue to label L1

        sub    $s1, $s1, 1                  # decrement r by 1 (r--)
        j    inner_while2                   # continue to 2nd inner while loop

        L1:

        blt   $s0, $s1, swap_lr_call        # if l < r, swap the elements at l and r

        L2:
        
        move $t1, $a0                       # move base address of the array to t1
        mul  $t2, $s2, 4                    # t2 = 4*p
        add  $a0, $t1, $t2                  # a0 = address of A[p]

        mul  $t2, $s1, 4                    # t2 = 4*r
        add  $a1, $t1, $t2                  # a1 = Address of A[r]

        jal swap_func                       # swap A[p] and A[r]

        lw    $a0, 20($sp)                  # load the pointer to the start of the array from the stack
        lw    $a1, 16($sp)                  # load the left index from the stack
        sub $a2, $s1, 1                     # move value of (r-1) to a2

        jal recursive_sort_func             # call recursive_sort_func with left and (r-1) as parameters

        lw    $a0, 20($sp)                  # load the pointer to the start of the array from the stack
        addi $a1, $s1, 1                    # move value of (r+1) to a1
        lw    $a2, 12($sp)                  # load the right index from the stack

        jal recursive_sort_func             # call recursive_sort_func with (r+1) and right as parameters

        j return_func

        swap_lr_call:

        move $t1, $a0                       # move base address of the array to t1
        mul  $t2, $s0, 4                    # t2 = l*4
        add  $a0, $t1, $t2                  # a0 = address of A[l]

        mul  $t2, $s1, 4                    # t2 = 4*r
        add  $a1, $t1, $t2                  # a1 = Address of A[r]

        jal   swap_func                     # swap A[l] and A[r]

        lw    $a0, 20($sp)                  # load the pointer to the start of the array from the stack
        lw    $a1, 16($sp)                  # load the left index from the stack
        j   outer_while                     # continue to while loop

        return_func:
        
        lw     $a0, 20($sp)                  # load the pointer to the start of the array from the stack 
        lw     $ra, 8($sp)                   # load the return address from the stack     
        lw     $s0, 4($sp)                   # load the value of l from the stack
        lw     $s1, 0($sp)                   # load the value of r from the stack

        addi   $sp, $sp, 24                  # deallocate the stack space
        jr     $ra                           # return from function

swap_func:
    lw    $t1, 0($a0)                        # move value stored at address present in a0 to t1
    lw    $t2, 0($a1)                        # move value stored at address present in a1 to t2

    sw    $t1, 0($a1)                        # move value stored in t1 to address present in a1
    sw    $t2, 0($a0)                        # move value stored in t2 to address present in a0

    jr    $ra                                # return from swap function

recursive_search_func:

# s0 = mid1    {stored at  4($sp)}
# s1 = mid2    {stored at  0($sp)}
# a0 = base address of array   {stored as 20($sp)}
# a1 = start   {stored at 16($sp)}
# a2 = end     {stored at 12($sp)}
# a3 = key     {(not required to store in stack)}
# ra = return address  {stored at 8($sp)}

    addi  $sp, $sp, -24                     # allocate stack space for local variables and saving values in arg registers
    sw   $a0, 20($sp)                       # save base address of array in stack
    sw   $a1, 16($sp)                       # save start index in stack
    sw   $a2, 12($sp)                       # save end index in stack
    sw   $ra, 8($sp)                        # save return address in stack
    sw   $s0, 4($sp)                        # save s0 (mid1) in stack
    sw   $s1, 0($sp)                        # save s1 (mid2) in stack
    
    lw   $t0, 16($sp)                       # load start index in $t0
    lw   $t1, 12($sp)                       # load end index in $t1

    bgt  $t0, $t1, return_not_found         # if start > end, return -1

    search:

    sub $t2, $t1, $t0                       # t2 = end - start
    li  $t3, 3
    div $t2, $t2, $t3                       # t2 = (end - start)/3
    add $s0, $t0, $t2                       # mid1 = start + (end - start)/3
    sub $s1, $t1, $t2                       # mid2 = end - (end - start)/3

    move $t3, $a3                           # move key present in a3 to t3
    
    check_mid1:
    
    mul  $t4, $s0, 4                        # t4 = 4*mid1
    add  $t4, $a0, $t4                      # t4 = Address of array[mid1]
    lw   $t5, 0($t4)                        # t5 = array[mid1]

    bne  $t3, $t5, check_mid2               # if key != array[mid1], continue to check_mid2

    move $v0, $s0                           # if key == array[mid1], move mid1 to v0
    j return_search

    check_mid2:

    mul  $t4, $s1, 4                        # t4 = 4*mid2
    add  $t4, $a0, $t4                      # t4 = Address of array[mid2]
    lw   $t5, 0($t4)                        # t5 = array[mid2]

    bne $t3, $t5, search_recursive          # if key != array[mid2], continue to search_recursive

    move $v0, $s1                           # if key == array[mid2], move mid2 to v0
    j return_search

    search_recursive:

    mul  $t4, $s0, 4                        # t4 = 4*mid1
    add  $t4, $a0, $t4                      # t4 = Address of array[mid1]
    lw   $t5, 0($t4)                        # t5 = array[mid1]

    blt  $t3, $t5, search_left              # if key < array[mid1], continue to search_left

    mul  $t4, $s1, 4                        # t4 = 4*mid2
    add  $t4, $a0, $t4                      # t4 = Address of array[mid2]
    lw   $t5, 0($t4)                        # t5 = array[mid2]

    bgt  $t3, $t5, search_right             # if key > array[mid2], continue to search_right

    search_middle:
    lw  $a0, 20($sp)                        # load base address of array
    add $a1, $s0, 1                         # start = mid1 + 1 to be placed in $a1
    sub $a2, $s1, 1                         # end = mid2 - 1 to be placed in $a2
    jal recursive_search_func               # call recursive_search_func with start and end as parameters
    j return_search

    search_left:
    lw  $a0, 20($sp)                        # load base address of array
    lw  $a1, 16($sp)                        # load start index in $a1
    sub $a2, $s0, 1                         # end = mid1 - 1 to be placed in $a2
    jal recursive_search_func               # call recursive_search_func with start and end as parameters
    j return_search

    search_right:
    lw $a0, 20($sp)                         # load base address of array
    add $a1, $s1, 1                         # start = mid2 + 1 to be placed in $a1
    lw $a2, 12($sp)                         # load end index in $a2
    jal recursive_search_func               # call recursive_search_func with start and end as parameters
    j return_search
    
    return_not_found:
        li   $v0, -1                        # if key is not found, return value = -1
        j return_search

    return_search:
        lw     $a0, 20($sp)                  # load the pointer to the start of the array from the stack 
        lw     $a1, 16($sp)                  # load the start index from the stack
        lw     $a2, 12($sp)                  # load the end index from the stack
        lw     $ra, 8($sp)                   # load the return address from the stack     
        lw     $s0, 4($sp)                   # load the value of l from the stack
        lw     $s1, 0($sp)                   # load the value of r from the stack
        addi  $sp, $sp, 24                   # deallocate the stack space
        jr     $ra                           # return from function
