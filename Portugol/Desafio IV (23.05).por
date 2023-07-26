programa
{
    inclua biblioteca Util
    
    funcao inicio()
    {
        inteiro matriz1[5][5], matriz2[5][5], matriz3[5][5], i, j, pares = 0, impares = 0, acima40 = 0, abaixo20 = 0, doisDigitos = 0

        // Preenchendo a primeira matriz com dados do usuário
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                escreva("Digite o valor para a posição [", i, "][", j, "]: ")
                leia(matriz1[i][j])
            }
        }

        // Preenchendo a segunda matriz com valores aleatórios entre 10 e 50
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                matriz2[i][j] = Util.sorteia(10, 50)
            }
        }

        // Preenchendo a terceira matriz com a soma das duas primeiras
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                matriz3[i][j] = matriz1[i][j] + matriz2[i][j]
            }
        }

        // Exibindo a primeira matriz
        escreva("\nMatriz 1:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                escreva(matriz1[i][j], "\t")
            }
            escreva("\n")
        }

        // Exibindo a segunda matriz
        escreva("\nMatriz 2:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                escreva(matriz2[i][j], "\t")
            }
            escreva("\n")
        }

        // Exibindo a terceira matriz
        escreva("\nMatriz 3:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                escreva(matriz3[i][j], "\t")
            }
            escreva("\n")
        }

        // Contando valores pares e ímpares na primeira matriz
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                se (matriz1[i][j] % 2 == 0) {
                    pares++
                } senao {
                    impares++
                }
            }
        }

        // Verificando valores acima de 40 e abaixo de 20 na segunda matriz
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                se (matriz2[i][j] > 40) {
                    acima40++
                } senao se (matriz2[i][j] < 20) {
                    abaixo20++
                }
            }
        }

        // Verificando valores com mais de dois dígitos na terceira matriz
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                se (matriz3[i][j] > 99) {
                    doisDigitos++
                }
            }
        }

        escreva("\nValores pares na primeira matriz: ", pares, "\n")
        escreva("Valores ímpares na primeira matriz: ", impares, "\n")
        escreva("Valores acima de 40 na segunda matriz: ", acima40, "\n")
        escreva("Valores abaixo de 20 na segunda matriz: ", abaixo20, "\n")
        escreva("Valores com mais de dois dígitos na terceira matriz: ", doisDigitos)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2970; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */