.text
main:
	lui $8, 0x1001
	lui $9, 0x00ff
	addi $20, $0, 32
	
test:
	beq $20, $0, fimLinha
	sw $9, 0($8)
	addi $8, $8, 4
	addi $20, $20, -1
	j test
	
fimLinha:
	
	addi $2, $0, 10
	syscall
