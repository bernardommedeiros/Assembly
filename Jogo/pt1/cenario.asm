.data
.text
main: 
    lui $8, 0x1001         
    addi $9, $0, 0xFFFFF0  #parede 
    addi $10, $0, 0xc57d56  #piso
    addi $11, $0, 8192 #contador
    addi $12, $0, 0x5C4033 #muro 
    addi $13, $0, 0x000000 #detalhe muro
    addi $14, $0, 0xe5bc43 #luz janela
    addi $15, $0, 0x5C4033 #janela 
forFundo: 
    beq $0, $11, fimFundo  
    sw $9, 0($8)           
    addi $8, $8, 4         
    sub $11, $11, 1         
    j forFundo              


fimFundo:
    lui $8, 0x1001
    addi $8, $8, 24576     
    addi $11, $0, 2048   
    
forPiso:
    beq $0, $11, fimPiso    
    sw $10, 0($8)           
    addi $8, $8, 4          
    sub $11, $11, 1        
    j forPiso  
	
fimPiso:
    lui $8, 0x1001          
    addi $8, $8, 65532    
    sub $11, $0, $8  
    li $12, 14336           # Inicia o contador com 14336
    lui $8, 0x1001          # Carrega a parte superior do endereço base
    addi $8, $8, 14336      # Ajusta $8 para o valor 0x10010000 + 14336
    li $9, 0x5C4033         # Carrega o valor da cor preta (0x000000)

forLoop:

    beq $12, 15488, fimLoop  # Se $12 == 18429, sai do loop (quando chegar ao pixel 18428)
    sw $9, 0($8)             # Armazena a cor preta no endereço de memória apontado por $8
    addi $8, $8, 4           # Avança o ponteiro para o próximo endereço
    addi $12, $12, 1         # Incrementa o contador
    j forLoop                # Volta ao início do loop

fimLoop:
    lui $8, 0x1001
    li $12, 16384           # Inicia o contador com 14336
    lui $8, 0x1001          # Carrega a parte superior do endereço base
    addi $8, $8, 16384      # Ajusta $8 para o valor 0x10010000 + 14336
    li $9, 0x000000         # Carrega o valor da cor preta (0x000000)
	
forDetalhe:
    beq $12, 16512 , fimDetalhe
    sw $13, 0($8)
    addi $8, $8, 4           # Avança o ponteiro para o próximo endereço
    addi $12, $12, 1         # Incrementa o contador
    j forDetalhe             # Volta ao início do loop]
    
fimDetalhe:
	lui $8, 0x1001
	
Janela:
	#lateral esquerda
	sw $15, 14128($8)
	sw $15, 13616($8)
	sw $15, 13104($8)
	sw $15, 12592($8)
	sw $15, 12080($8)
	sw $15, 11568($8)
	sw $15, 11056($8)
	sw $15, 10544($8)
	sw $15, 10032($8)
	sw $15, 9520($8)
	sw $15, 9008($8)
	sw $15, 8496($8)
	sw $15, 7984($8)
	sw $15, 7472($8)
	sw $15, 6960($8)
	sw $15, 6448($8)
	sw $15, 5936($8)
	
	
	sw $15, 14124($8)
	sw $15, 13612($8)
	sw $15, 13100($8)
	sw $15, 12588($8)
	sw $15, 12076($8)
	sw $15, 11564($8)
	sw $15, 11052($8)
	sw $15, 10540($8)
	sw $15, 10028($8)
	sw $15, 9516($8)
	sw $15, 9004($8)
	sw $15, 8492($8)
	sw $15, 7980($8)
	sw $15, 7468($8)
	sw $15, 6956($8)
	sw $15, 6444($8)
	
	
	
	sw $15, 13108($8)
	sw $15, 12596($8)
	sw $15, 12084($8)
	sw $15, 11572($8)
	sw $15, 11060($8)
	sw $15, 10548($8)
	sw $15, 10036($8)
	sw $15, 9524($8)
	sw $15, 9012($8)
	sw $15, 8500($8)
	sw $15, 7988($8)
	sw $15, 7476($8)
	sw $15, 6964($8)
	sw $15, 6452($8)
	
	sw $15, 5940($8)
	
	#detalhe para fora do pilar og
	sw $15, 14120($8)
	sw $15, 13608($8)
	sw $15, 13096($8)
	sw $15, 12584($8)
	sw $15, 12072($8)
	sw $15, 11560($8)
	sw $15, 11048($8)
	sw $15, 10536($8)
	sw $15, 14116($8)
	sw $15, 13604($8)
	sw $15, 13092($8)
	
	#superior
	sw $15, 5428($8)
	sw $15, 5432($8)
	sw $15, 5944($8)
	sw $15, 5436($8)
	sw $15, 5948($8)
	sw $15, 5440($8)
	sw $15, 5952($8)
	sw $15, 5444($8)

	sw $15, 4932($8)
	sw $15, 4928($8)
	sw $15, 4420($8)
	sw $15, 4416($8)
	sw $15, 4924($8)
	sw $15, 3904($8)
	sw $15, 3908($8)
	sw $15, 3912($8)
	sw $15, 3916($8)
	sw $15, 3920($8)
	sw $15, 3924($8)
	sw $15, 3928($8)
	sw $15, 3932($8)
	sw $15, 3936($8)
	sw $15, 3940($8)
	sw $15, 3944($8)
	sw $15, 3948($8)
	sw $15, 3952($8)
	sw $15, 3956($8)
	sw $15, 3960($8)
	sw $15, 3964($8)
	
	sw $15, 4424($8)
	sw $15, 4428($8)
	sw $15, 4432($8)
	sw $15, 4436($8)
	sw $15, 4440($8)
	sw $15, 4444($8)
	sw $15, 4448($8)
	sw $15, 4452($8)
	sw $15, 4456($8)
	sw $15, 4460($8)
	sw $15, 4464($8)
	sw $15, 4468($8)
	sw $15, 4472($8)
	sw $15, 4476($8)
	
	
	
                  

fim:
    addi $2, $0, 10
	syscall
