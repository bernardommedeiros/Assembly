#operações basicas em assembly

#contém 32 registradores ($) de 32 bits, alguns deles possuem uso predeterminado, exemplo: $0 == 0, $31 usado para subrotina (modularização do código) retorno de endereço.

# registradores de uso livre: $8 a $15 e $24 $25 - variaveis temporárias (disponíveis ao usuário), $16 a $23 - variaveis salvas (a subrotina não altera o seu valor)
# registrador HI e LO - ex: recebem o resultado de uma multiplicação de dois numeros de 32 bits

# operaações aritmeticas

    # soma de dois numeros == add $destino ex:$10, $fonte1 ex:$8, $fonte2 ex:$9
    # addi para atribuição de constantes

    addi $8, $0, 5  # carregar valor 5 somado ao registrador 0 na variavel $8
    addi $8, $0, 4  # carregar valor 5 somado ao registrador 0 na variavel $9
    add $10, $8, $9  # somar os valores na variaveis $8 e $9 e armazenar o resultado na variavel $10

    # subtracao de dois numeros == sub $destino ex:$10, $fonte1 ex:$8, $fonte2 ex:$9
    subi $8, $0, 5  # carregar valor 5 subtraido do registrador 0 na variavel $8
    subi $8, $0, 4  # carregar valor 4 subtraido do registrador 0 na variavel $9
    sub $10, $8, $9  # subtrair os valores na variaveis $8 e $9 e armazenar o resultado na variavel $10

    # multiplicacao de dois numeros == mul $destino ex:$10, $fonte1 ex:$8, $fonte2 ex:$9
    mul $10, $8, $9  # multiplicar os valores na variaveis $8 e $9 e armazenar o resultado na variavel $10
    # divisao de dois numeros == div $destino ex:$10, $fonte1 ex:$8, $fonte2 ex:$9
    
    div $10, $8, $9  # dividir os valores na variaveis $8 e $9 e armazenar o resultado na variavel $10


# operacoes de deslocamento

    # shift left << - desloca o conteudo do registrador para a esquerda pelo numero de bits especificado
    # shift right >> - desloca o conteudo do registrador para a direita pelo numero de bits especificado
    # sll - shift left logical - desloca o conteudo do registrador para a esquerda pelo numero de bits especificado sem preenchimento de zeros à direita
    # srl - shift right logical - desloca o conteudo do registrador para a direita pelo numero de bits especificado sem preenchimento de zeros à esquerda
    # sra - shift right arithmetic - desloca o conteudo do registrador para a direita pelo numero de bits especificado com preenchimento de zeros à esquerda


