.text
main:
 #deslocar uma casa pra esquerda multiplica por 2
	sll $9 $9 1

#ex q5
	#peso 3
	sll $11 $10 1
	add $10 $11 $10
	#multiplica por 2 e soma mais uma vez



#VERFICAÇÃO POSITIVO OU NEGATIVO
#ve se o primeiro bit é 1 ou 0 e executar o beq	
srl $9, $8, 31
 beq $9, $0, pos
	
	
	


	
