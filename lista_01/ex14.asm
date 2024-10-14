.text
main: 
	addi $20, $0, 2 #atribua ao registrador o valor 2
	
	addi $2, $0, 5 
	syscall
	add $8, $0, $2
	
	div $8, $20
	
	mfhi $8
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall	