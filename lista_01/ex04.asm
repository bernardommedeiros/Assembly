.text
main: 
	addi $20, $0, 2 #atribua ao registrador o valor 2
	
	#nota 1
	addi $2, $0, 5 
	syscall
	add $8, $0, $2
	
	#nota 2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	add $10, $8, $9
	
	div $10, $20
	
	mflo $10
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall	

	