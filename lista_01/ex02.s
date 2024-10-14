.text
main:
	addi $2, $0, 5 #atribui ao registrador 2, o valor inteiro lido por 5
	syscall
	add $8, $0, $2 #adciona ao registrador 8 a soma entre o registrador0=0 e o valor dado pelo usuario
	
	mul $8, $8, $8 #multiplicando o arfgumento dado ao quadrado
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall 