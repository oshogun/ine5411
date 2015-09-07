.text				# Define o início do text segment
.globl main			# Define o início do código do usuário

main:				# Label que define o início do código do usuário
  add $s0,$zero,$gp # Copia o valor de $gp ao registrador %s0
  lbu $t0,0($s0)	# (load byte unsigned) Copia o byte da posição de memória [$s0 + 0] para o reg $t0
  					# Como na instrução anterior a posição de memória de $gp foi armazenada em $s0,
  					# esse será o valor copiado ao $t0
  sb $t1,1($s0) 	# (store byte) Guarda o byte menos significativo de $t1 na posição indicada por [$s0 + 1]
  
