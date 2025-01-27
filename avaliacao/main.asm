.text

main:
    # Cenario da tela
    jal criarCenario

    # Copia do cenario
    addi $4, $0, 32768
    jal criarCenario

    # Criação do primeiro NPC
    addi $4, $0, 0
    jal criarNpc

    # Criação do segundo NPC
    addi $4, $0, 32768
    jal criarNpc2

forLoop:
    # Atualiza o cenario/restaura tela
    add $4, $25, 30632
    jal forRestaurar

    # Atualiza o NPC 1
    addi $25, $25, -4  # Decrementa $25 em 4 para ajustar a posição do NPC 1.
    add $4, $0, $25
    jal criarNpc

    # Atualiza o NPC 2
    jal criarNpc2

    # Timer para controlar a velocidade
    jal timer

    # Continua o loop
    j forLoop

timer:
    sw $16, 0($29)         # Salva o valor do registrador $16 na pilha
    addi $29, $29, -4      # Ajusta o ponteiro da pilha
    addi $16, $0, 50000    # Inicializa o contador do timer

forT:
    beq $16, $0, fimT      # Se o contador chegar a 0, sai do loop
    nop
    nop
    addi $16, $16, -1      # Decrementa o contador
    j forT                 # Continua no loop

fimT:
    addi $29, $29, 4       # Restaura o ponteiro da pilha
    lw $16, 0($29)         # Restaura o valor do registrador $16
    jr $31                 # Retorna ao chamador

fim:
    addi $2, $0, 10
    syscall

# Função criarCenario (deve estar implementada em outro lugar)
# Função criarNpc
# Função criarNpc2
# Função forRestaurar (também precisa estar implementada)
