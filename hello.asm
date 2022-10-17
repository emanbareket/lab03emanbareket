# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
    prompt: .asciiz "Enter an integer: "

#Text Area (i.e. instructions)
.text
main:
    li $v0 4
    la $a0 prompt
    syscall
    li $v0 5
    syscall
    move $t0 $v0
    li $t1 1
    and $t2 $t0 $t1
    beq $t2 $t1 mult_odd
    li $t4 3
    mult $t0 $t4
    mflo $t3
    li $v0 1
    move $a0 $t3
    syscall
    j exit
mult_odd:
    li $t4 2
    mult $t0 $t4
    mflo $t3
    li $v0 1
    move $a0 $t3
    syscall
    j exit
	# TODO: Write your code here

exit:
    li $v0, 10
    syscall
	# Exit SPIM: Write your code here!

