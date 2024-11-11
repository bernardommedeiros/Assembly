.text
main:
	#inicialização
init:
	addi $8, $0, 10
	addi $9, $0, 1 #condição de parada # i = 1
	
test:	
	#teste
	beq $8, $8, fimfor
	#corpo do laço

inc:	
	#incremento
	addi $(, $9, 1 # i <- i+1
	j test
