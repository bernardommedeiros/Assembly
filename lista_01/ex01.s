.text
main:
	addi $8, $0, 2 #atribua ao registrador 8 a soma do registrador 0 e 2
	addi $2, $0, 5 # atribbua ao registrador 2, easse que é dedicado a leitura de dados do usuario o valor a ser chamado pelo syscall, indicado pelo 5
	syscall 
	add $5, $0, $2 # adciona ao registrador 5, que le inteiros, o valor digitado
	mul $8, $5, $8 
	
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall