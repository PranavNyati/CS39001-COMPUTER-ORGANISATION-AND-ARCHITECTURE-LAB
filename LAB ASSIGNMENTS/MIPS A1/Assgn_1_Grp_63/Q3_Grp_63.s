# Assn-1, Ques 3
# Group-63
# Pranav Nyati (Roll : 20CS30037)
# Shreyas Jena (Roll : 20CS30049)

# This program inputs a positive number (> 10) and displays whether it is a prime number or not.

.globl  main

.data

    prompt:
        .asciiz "Enter a positive integer greater than equals to 10: "
    errmesg:
        .asciiz "Error: You have not entered a positive integer greater than equals to 10!"
    newline:
        .asciiz "\n"
    prime_mesg:
        .asciiz "Entered number is a PRIME number"
    comp_mesg:
        .asciiz "Entered number is a COMPOSITE number"

.text

# main program
# n = $s0
# i = $s1

    main:

        while:

            la $a0, prompt                  # print "Enter a positive integer greater than equals to 10: "
            li $v0, 4
            syscall

            li $v0, 5                       # Enter number n
            syscall
            move $s0, $v0                   # store number in n = $s0

            bge $s0, 10, endwhile           # if n >= 10, end while loop

            la $a0, errmesg                 # if entered number is < 10, print error message
            li $v0, 4
            syscall

            la $a0, newline
            li $v0, 4
            syscall
            b while                         # rerun while loop

        endwhile:

            li $s1, 2                       # set i = 2
            for:
                mul $t0, $s1, $s1          # store in $t0 = i * i
                bgt $t0, $s0, endfor        # if i * i > n, end for loop
                div $s0, $s1                # compute n/i
                mfhi $t1                    # move remainder of prev division to register $t1

                beq $t1, 0, composite       # if remainder == 0, redirect to composite block to print message
                add $s1, $s1, 1             # increment i by 1
                b for                       # rerun for loop

                composite:
                    la $a0, comp_mesg       # print composite number message
                    li $v0, 4
                    syscall
                    b end

            endfor:
                la $a0, prime_mesg          # print prime number message
                li $v0, 4
                syscall
               
            end:
                li $v0, 10                  # exit
                syscall



