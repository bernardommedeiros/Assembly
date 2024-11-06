#q4
.text
main:
	#leitura de dois numeros
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	#impressao do primeiro numero
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	#checa se sao iguais
	beq $8 $9, impIgual
	#caso nao sejam iguais segue o algoritmo
	#consequentemente um será maior que o outro
	slt $10, $8, $9
	beq, $10, $0, impMaior
	#caso não seja maior, segue o algoritmo
	addi $4 $0 '<'
	
	
impMaior: addi $4, $0, '>'
	j imp 
	
impIgual: addi $4 $0 '='
	j imp
	
	
imp:
	addi $2 $0 11
	syscall
	
fim: addi $2 $0 10
	syscall
	
