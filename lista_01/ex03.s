.text
main: 
	#1 digito
	
	addi $2, $0, 5 # atribua ao registrador 8 o valor digitado pelo usuario, indicado pelo 2
	syscall
	add $8, $0, $2
	
	#2 digito
	
	addi $2, $0, 5 # atribua ao registrador 8 o valor digitado pelo usuario, indicado pelo 2
	syscall
	add $9, $0, $2
	

	
	mul $10, $8, $9
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall