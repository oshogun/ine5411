.text
.globl main

main:
	addi $a0,$zero,1
	addi $a1,$zero,1
	addi $a2,$zero,1
	jal fib_iter
	j lol

fib_iter:
	addi $sp,$sp,-16
	sw $a0,12($sp)
	sw $a1,8($sp)
	sw $a2,4($sp)
	sw $ra,0($sp)
	
	bne $a2,$zero,else
	add $v0,$zero,$a1
	addi $sp,$sp,16
	jr $ra
else:
	add $t0,$a0,$a1
	add $a1,$zero,$a0
	add $a0,$zero,$t0
	addi $a2,$a2,-1
	jal fib_iter
exit:
	lw $ra,0($sp)
	lw $a2,4($sp)
	lw $a1,8($sp)
	lw $a0,12($sp)
	addi $sp,$sp,16
	jr $ra
	
lol:
