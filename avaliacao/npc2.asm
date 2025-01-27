.text

criarNpc2:
    # Cores dos dois pixels
    ori $14, $0, 0xF85DA6  # Pixel 1 - Rosa claro
    ori $15, $0, 0x3D2F58  # Pixel 2 - Azul escuro

    # Base do bitmap (posição inicial no buffer)
    lui $8, 0x1001         # Carrega endereço base do bitmap
    addi $8, $8, 1320      # Adiciona offset inicial (posição inicial do NPC)

    # Configurações para o movimento
    ori $9, $0, 4          # Incremento de movimento
    lui $10, 0x0000        # Cor de fundo (padrão: preto)
    ori $10, $10, 0x000000

moveNpc:
    # Temporizador para controlar a velocidade
    jal timer              # Chama a função timer para delay

    # Limpa os pixels anteriores, restaurando o cenário
    sw $10, 0($8)          # Substitui Pixel 1 com o fundo
    sw $10, 4($8)          # Substitui Pixel 2 com o fundo

    # Atualiza a posição para o próximo movimento
    add $8, $8, $9         # Incrementa a posição base (anda 4 bytes)

    # Verifica se a nova posição ultrapassou o limite do bitmap
    lui $11, 0x1001        # Carrega o limite superior do buffer
    addi $11, $11, 30720   # Exemplo de limite final (ajustar conforme a tela)
    sub $12, $8, $11       # Calcula a diferença entre $8 e limite superior
    beq $12, $0, resetPos  # Se ultrapassar o limite, reinicia posição

    # Desenha os novos pixels na nova posição
    sw $14, 0($8)          # Pixel 1 na nova posição
    sw $15, 4($8)          # Pixel 2 na nova posição

    # Continua o movimento em loop
    j moveNpc

resetPos:
    # Reinicia a posição inicial do NPC
    lui $8, 0x1001         # Base do bitmap
    addi $8, $8, 1320      # Offset inicial
    j moveNpc              # Volta para o loop de movimento

    jr $31              # Retorna ao chamador

# Função Timer
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
    jr $31                 # Retorna para o chamador
