.data

.text
.globl main
main:
    # Allocate stack space
    addi $sp, $sp, -400
    j main_start       # Jump to main function


# Function: __mod
func___mod:
    # Save return address and allocate local stack frame
    # Parameter 'a' at offset 0
    sw $a0, 0($sp)     # Store parameter 'a'
    # Parameter 'b' at offset 4
    sw $a1, 4($sp)     # Store parameter 'b'
    # Declared 'q' at offset 8
    lw $t0, 0($sp)     # Load variable 'a'
    lw $t1, 4($sp)     # Load variable 'b'
    div $t0, $t1         # a / b
    mflo $t2              # t0 = quotient
    move $t0, $t2       # q = t0
    sw $t0, 8($sp)     # Store to 'q'
    lw $t1, 4($sp)     # Load variable 'b'
    mul $t2, $t0, $t1   # t0 = q * b
    lw $t0, 0($sp)     # Load variable 'a'
    sub $t1, $t0, $t2   # t1 = a - t0
    move $v0, $t1       # Move to return register
    # Return from function
    # End of function __mod
    # Restore and return
    jr $ra

# Function: main
main_start:
    # Declared 'i' at offset 0
    # Declared 'sum' at offset 4
    # Declared 'result' at offset 8
    # Declared 'x' at offset 12
    li $t0, 111         # Load constant 111 for print
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 0         # sum = 0 (constant)
    sw $t0, 4($sp)     # Store to 'sum'
    li $t1, 0         # i = 0 (constant)
    sw $t1, 0($sp)     # Store to 'i'
L0:
    li $t2, 5         # Load constant 5
    slt $t3, $t1, $t2   # t1 = i < 5
    beq $t3, $zero, L1   # if !t1 goto L1
    lw $t1, 0($sp)     # Load variable 'i'
    add $t3, $t0, $t1   # t1 = sum + i
    move $t0, $t3       # sum = t1
    sw $t0, 4($sp)     # Store to 'sum'
    lw $t1, 0($sp)     # Load variable 'i'
    li $t2, 1         # Load constant 1
    add $t3, $t1, $t2   # t1 = i + 1
    move $t1, $t3       # i = t1
    sw $t1, 0($sp)     # Store to 'i'
    j L0        # Unconditional jump
L1:
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 222         # Load constant 222 for print
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 0         # sum = 0 (constant)
    sw $t0, 4($sp)     # Store to 'sum'
    li $t1, 1         # i = 1 (constant)
    sw $t1, 0($sp)     # Store to 'i'
L2:
    li $t2, 5         # Load constant 5
    sle $t3, $t1, $t2   # t1 = i <= 5
    beq $t3, $zero, L3   # if !t1 goto L3
    lw $t1, 0($sp)     # Load variable 'i'
    add $t3, $t0, $t1   # t1 = sum + i
    move $t0, $t3       # sum = t1
    sw $t0, 4($sp)     # Store to 'sum'
    lw $t1, 0($sp)     # Load variable 'i'
    li $t2, 1         # Load constant 1
    add $t3, $t1, $t2   # t1 = i + 1
    move $t1, $t3       # i = t1
    sw $t1, 0($sp)     # Store to 'i'
    j L2        # Unconditional jump
L3:
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 333         # Load constant 333 for print
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 0         # sum = 0 (constant)
    sw $t0, 4($sp)     # Store to 'sum'
    li $t1, 10         # i = 10 (constant)
    sw $t1, 0($sp)     # Store to 'i'
    # Declared '_do0' at offset 16
    li $t2, 1         # _do0 = 1 (constant)
    sw $t2, 16($sp)     # Store to '_do0'
L4:
    beq $t2, $zero, L5   # if !_do0 goto L5
    add $t3, $t0, $t1   # t1 = sum + i
    move $t0, $t3       # sum = t1
    sw $t0, 4($sp)     # Store to 'sum'
    lw $t1, 0($sp)     # Load variable 'i'
    li $t4, 1         # Load constant 1
    add $t3, $t1, $t4   # t1 = i + 1
    move $t1, $t3       # i = t1
    sw $t1, 0($sp)     # Store to 'i'
    li $t4, 5         # Load constant 5
    slt $t3, $t1, $t4   # t1 = i < 5
    move $t2, $t3       # _do0 = t1
    sw $t2, 16($sp)     # Store to '_do0'
    j L4        # Unconditional jump
L5:
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 444         # Load constant 444 for print
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t3, 12         # t1 = 12 (constant)
    li $t0, 2         # Load constant 2
    add $t1, $t0, $t3   # t0 = 2 + t1
    move $t0, $t1       # result = t0
    sw $t0, 8($sp)     # Store to 'result'
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t1, 5         # t0 = 5 (constant)
    li $t0, 4         # Load constant 4
    mul $t3, $t1, $t0   # t1 = t0 * 4
    move $t0, $t3       # result = t1
    sw $t0, 8($sp)     # Store to 'result'
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t3, 6         # t1 = 6 (constant)
    li $t0, 10         # Load constant 10
    sub $t1, $t0, $t3   # t0 = 10 - t1
    li $t0, 1         # Load constant 1
    add $t3, $t1, $t0   # t1 = t0 + 1
    move $t0, $t3       # result = t1
    sw $t0, 8($sp)     # Store to 'result'
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t3, 20         # t1 = 20 (constant)
    li $t0, 2         # Load constant 2
    div $t3, $t0         # t1 / 2
    mflo $t1              # t0 = quotient
    move $t0, $t1       # result = t0
    sw $t0, 8($sp)     # Store to 'result'
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 555         # Load constant 555 for print
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    # Argument: 10
    # Argument: 3
    # Call function __mod with 2 arguments
    li $a0, 10
    li $a1, 3
    jal func___mod
    move $t1, $v0      # Get return value
    move $t0, $t1       # result = t0
    sw $t0, 8($sp)     # Store to 'result'
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    # Argument: 7
    # Argument: 2
    # Call function __mod with 2 arguments
    li $a0, 7
    li $a1, 2
    jal func___mod
    move $t1, $v0      # Get return value
    move $t0, $t1       # result = t0
    sw $t0, 8($sp)     # Store to 'result'
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    # Argument: 10
    # Argument: 3
    # Call function __mod with 2 arguments
    li $a0, 10
    li $a1, 3
    jal func___mod
    move $t1, $v0      # Get return value
    li $t0, 2         # Load constant 2
    add $t3, $t0, $t1   # t1 = 2 + t0
    move $t0, $t3       # result = t1
    sw $t0, 8($sp)     # Store to 'result'
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 666         # Load constant 666 for print
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 0         # sum = 0 (constant)
    sw $t0, 4($sp)     # Store to 'sum'
    li $t1, 0         # i = 0 (constant)
    sw $t1, 0($sp)     # Store to 'i'
L6:
    li $t4, 2         # Load constant 2
    slt $t3, $t1, $t4   # t1 = i < 2
    beq $t3, $zero, L7   # if !t1 goto L7
    li $t1, 1         # x = 1 (constant)
    sw $t1, 12($sp)     # Store to 'x'
L8:
    li $t4, 2         # Load constant 2
    sle $t3, $t1, $t4   # t1 = x <= 2
    beq $t3, $zero, L9   # if !t1 goto L9
    li $t1, 1         # Load constant 1
    add $t3, $t0, $t1   # t1 = sum + 1
    move $t0, $t3       # sum = t1
    sw $t0, 4($sp)     # Store to 'sum'
    lw $t1, 12($sp)     # Load variable 'x'
    li $t4, 1         # Load constant 1
    add $t3, $t1, $t4   # t1 = x + 1
    move $t1, $t3       # x = t1
    sw $t1, 12($sp)     # Store to 'x'
    j L8        # Unconditional jump
L9:
    lw $t4, 0($sp)     # Load variable 'i'
    li $t5, 1         # Load constant 1
    add $t3, $t4, $t5   # t1 = i + 1
    move $t4, $t3       # i = t1
    sw $t4, 0($sp)     # Store to 'i'
    j L6        # Unconditional jump
L7:
    # Print integer
    move $a0, $t0
    li $v0, 1
    syscall
    # Print newline
    li $v0, 11
    li $a0, 10
    syscall
    li $t0, 0         # Load return value
    move $v0, $t0       # Move to return register
    # Return from function
    # End of function main

    # Spill any remaining registers

    # Exit program
    addi $sp, $sp, 400
    li $v0, 10
    syscall
