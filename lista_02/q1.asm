.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	slt $10, $8, $9 

	beq $10, $0, maior
	add $11, $0, $9
	j print
maior:
	add $11, $0, $8
	
print:
	add $4, $0, $11
	addi $2, $0, 1
	syscall

	addi $2, $0, 10
	syscall