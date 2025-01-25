.text
main:
    # cenario da tela
    jal criarCenario
    
    # copia do cenario
    addi $4, $0, 32768
    jal criarCenario
    
    jal criarNpc
    addi $20, $0, 32168
forLoop:
    add $4, $0, $20
    jal forRestaurar
    
    addi $20, $20, -4
    add $4, $0, $20
    jal criarNpc
    jal timer
    j forLoop
    
 
timer: sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 100000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
       
fim:	
       addi $2, $0, 10
	syscall
