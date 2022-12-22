# Assn-1, Ques 2
# Group-63
# Pranav Nyati (Roll : 20CS30037)
# Shreyas Jena (Roll : 20CS30049)

# This program inputs two +ve numbers and computes and displays their GCD by repeated subtraction.

.globl  main

.data

    prompt1:
        .asciiz "Enter the first positive integer: "
    prompt2:
        .asciiz "Enter the second positive integer: "
    errmesg:
        .asciiz "The input given by you is not positive. Please enter positive integers only!"
    newline:
        .asciiz "\n"
    output:
        .asciiz "GCD of the two integers is : "

.text

# main program
# a = $s0
# b = $s1
# gcd = $s2

    main:

        while1:

            la $a0, prompt1                 # print "Enter the first positive integer: "
            li $v0, 4
            syscall

            li $v0, 5                       # input the first positive integer
            syscall
            move $s0, $v0

            la $a0, prompt2                 # print "Enter the second positive integer: "
            li $v0, 4
            syscall

            li $v0, 5                       # input the second positive integer
            syscall
            move $s1, $v0

                
            ble $s0, 0, error               # if a <= 0, print error message and rerun while1 loop
            bgt $s1, 0, endwhile1           # if a > 0 and b > 0, end while1 loop

            error:                          # print error essage
                la $a0, errmesg         
                li $v0, 4
                syscall
            
                la $a0, newline
                li $v0, 4
                syscall
                b while1

        endwhile1:

            bne $s0, 0, while2              # if a != 0, jump to code for repeated subtraction
            move $s2, $s1                   # if a == 0, set gcd = b
            b end                           # jump to end

            while2: 
                beq $s1, 0, endwhile2       # if b == 0, end while2 loop and set gcd = a
                ble $s0, $s1, else          # if a <= b, jump to else
                sub $s0, $s0, $s1           # if a > b, do a = a - b
                b while2
                
                else:
                    sub $s1, $s1, $s0       # if a <= b, do b = b - a
                    b while2

            endwhile2:
                move $s2, $s0               # if b == 0 after repeated subtraction, set gcd = a

            end:
                la $a0, output              # print "GCD of the two integers is : "
                li $v0, 4
                syscall

                move $a0, $s2                 # print gcd
                li $v0, 1
                syscall

                la $a0, newline             # print newline
                li $v0, 4
                syscall

                li $v0, 10                  # exit
                syscall


    


