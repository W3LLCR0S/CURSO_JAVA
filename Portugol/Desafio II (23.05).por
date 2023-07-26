programa
{
    inclua biblioteca Util

    funcao inicio()
    {
        inteiro matriz[5][5]

        // Preencher a matriz com valores aleatórios de 1 a 10
        para (inteiro i = 0; i < 5; i++) {
            para (inteiro j = 0; j < 5; j++) {
                matriz[i][j] = Util.sorteia(1, 50)
            }
        }

        // Exibir a matriz
        escreva("Matriz:\n")
        para (inteiro i = 0; i < 5; i++) {
            para (inteiro j = 0; j < 5; j++) {
                escreva(matriz[i][j], "\t")
            }
            escreva("\n")
        }
        escreva("\n")

        inteiro opcao

        faca {
            escreva("Opções:\n")
            escreva("1. Soma dos valores da diagonal principal\n")
            escreva("2. Soma dos valores de cada coluna\n")
            escreva("3. Produto entre os valores da segunda linha\n")
            escreva("4. Maior valor da quarta coluna\n")
            escreva("5. Média dos valores de cada linha\n")
            escreva("6. Menor valor da linha 0\n")
            escreva("0. Sair\n\n")

            escreva("Digite a opção desejada: ")
            leia(opcao)
            escreva("\n")

            escolha (opcao) {
                caso 1:
                    somaDiagonalPrincipal(matriz)
                    pare

                caso 2:
                    somaColunasMatriz(matriz)
                    pare

                caso 3:
                    produtoSegundaLinhaMatriz(matriz)
                    pare

                caso 4:
                    maiorValorQuartaColuna(matriz)
                    pare

                caso 5:
                    mediaValoresLinhas(matriz)
                    pare

                caso 6:
                    menorValorLinha0(matriz)
                    pare

                caso 0:
                    escreva("Saindo...\n")
                    pare

                caso contrario:
                    escreva("Opção inválida. Digite novamente.\n")
            }
            escreva("\n")

        } enquanto (opcao != 0)
    }

    // Função para calcular a soma dos valores da diagonal principal
    funcao somaDiagonalPrincipal(inteiro matriz[][])
    {
        inteiro soma = 0

        para (inteiro i = 0; i < 5; i++) {
            soma += matriz[i][i]
        }

        escreva("Soma dos valores da diagonal principal: ", soma, "\n")
    }

    funcao somaColunasMatriz(inteiro matriz[][])
    {
        inteiro somaColunas[5] = {0, 0, 0, 0, 0}
        para (inteiro j = 0; j < 5; j++) {
            para (inteiro i = 0; i < 5; i++) {
                somaColunas[j] = somaColunas[j] + matriz[i][j]
            }
            escreva("Soma da coluna ", j, ": ", somaColunas[j], "\n")
        }
    }

    funcao produtoSegundaLinhaMatriz(inteiro matriz[][])
    {
        inteiro produtoSegundaLinha = 1
        para (inteiro j = 0; j < 5; j++) {
            produtoSegundaLinha = produtoSegundaLinha * matriz[1][j]
        }
        escreva("Produto entre os valores da segunda linha: ", produtoSegundaLinha, "\n")
    }

    funcao maiorValorQuartaColuna(inteiro matriz[][])
    {
        inteiro maiorQuartaColuna = matriz[0][3]
        para (inteiro i = 1; i < 5; i++) {
            se (matriz[i][3] > maiorQuartaColuna) {
                maiorQuartaColuna = matriz[i][3]
            }
        }
        escreva("Maior valor da quarta coluna: ", maiorQuartaColuna, "\n")
    }

    funcao mediaValoresLinhas(inteiro matriz[][])
    {
        para (inteiro i = 0; i < 5; i++) {
            inteiro somaLinha = 0
            para (inteiro j = 0; j < 5; j++) {
                somaLinha += matriz[i][j]
            }
            real mediaLinha = somaLinha / 5.0
            escreva("Média da linha ", i, ": ", mediaLinha, "\n")
        }
    }

    funcao menorValorLinha0(inteiro matriz[][])
    {
        inteiro menorLinha0 = matriz[0][0]
        para (inteiro j = 1; j < 5; j++) {
            se (matriz[0][j] < menorLinha0) {
                menorLinha0 = matriz[0][j]
            }
        }
        escreva("Menor valor da linha 0: ", menorLinha0, "\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */