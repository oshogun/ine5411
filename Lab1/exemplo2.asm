.text 
.globl main

main:
	add $s0, $zero, $gp		# Copia o conteúdo do global pointer para $s0
	lbu $t0, 0($s0) 		# Copia o byte da posição de memória [$s0 + 0] para $t0
	lbu $t1, 1($s0) 		# Copia o byte da posição de memória [$s0 + 1] para $t1
	lbu $t2, 2($s0) 		# Copia o byte da posição de memória [$s0 + 2] para $t2
	lbu $t3, 3($s0) 		# Copia o byte da posição de memória [$s0 + 3] para $t3
	lbu $t4, 4($s0) 		# Copia o byte da posição de memória [$s0 + 4] para $t4
	lbu $t5, 5($s0) 		# Copia o byte da posição de memória [$s0 + 5] para $t5
	lbu $t6, 6($s0) 		# Copia o byte da posição de memória [$s0 + 6] para $t6
	lbu $t7, 7($s0) 		# Copia o byte da posição de memória [$s0 + 7] para $t7
	lw $t8, 0($s0)			# Carrega a word contida na posição de memória [$s0 + 0] no registrador $t8
	