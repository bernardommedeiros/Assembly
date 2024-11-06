.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	srl $9, $8, 31
	beq $9, $0, positivo
	#caso seja negativo
	mul $4, $8, $8
	
	j print
	
positivo:
	sll $4, $8, 1

print:
	addi $2, $0, 1
	syscall
	
	#fim de codigo
	addi $2, $0, 10
	syscall