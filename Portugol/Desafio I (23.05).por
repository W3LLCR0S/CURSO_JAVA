programa
{
    inclua biblioteca Util

    funcao inicio()
    {
        inteiro matriz[5][5]

        // Preenche a matriz com números aleatórios de 1 a 100
        para (inteiro i = 0; i < 5; i++) {
            para (inteiro j = 0; j < 5; j++) {
                matriz[i][j] = Util.sorteia(1, 100)
            }
        }

        inteiro opcao

        faca {
            escreva("Opções:\n")
            escreva("1. Exiba toda a matriz\n")
            escreva("2. Mostre a Diagonal Principal\n")
            escreva("3. Mostre os valores do triângulo superior\n")
            escreva("4. Exiba os valores do triângulo inferior\n")
            escreva("5. Mostre todos os valores da coluna X\n")
            escreva("6. Mostre todos os valores da linha X\n")
            escreva("7. Exiba apenas os números ímpares\n")
            escreva("0. Sair\n\n")

            escreva("Digite a opção desejada (0 a 7): ")
            leia(opcao)
            escreva("\n")

            se (opcao == 1) {
                // Exibe toda a matriz
                para (inteiro i = 0; i < 5; i++) {
                    para (inteiro j = 0; j < 5; j++) {
                        escreva(matriz[i][j], "\t")
                    }
                    escreva("\n")
                }
            } senao se (opcao == 2) {
                // Exibe a Diagonal Principal
                para (inteiro i = 0; i < 5; i++) {
                    escreva(matriz[i][i], "\t")
                }
                escreva("\n")
            } senao se (opcao == 3) {
                // Exibe os valores do triângulo superior
                para (inteiro i = 0; i < 5; i++) {
                    para (inteiro j = 0; j < 5; j++) {
                        se (j >= i) {
                            escreva(matriz[i][j], "\t")
                        } senao {
                            escreva(" \t")
                        }
                    }
                    escreva("\n")
                }
            } senao se (opcao == 4) {
                // Exibe os valores do triângulo inferior
                para (inteiro i = 0; i < 5; i++) {
                    para (inteiro j = 0; j < 5; j++) {
                        se (j <= i) {
                            escreva(matriz[i][j], "\t")
                        } senao {
                            escreva(" \t")
                        }
                    }
                    escreva("\n")
                }
            } senao se (opcao == 5) {
                // Mostra todos os valores da coluna X
                inteiro coluna
                escreva("Digite o número da coluna (0 a 4): ")
                leia(coluna)
                escreva("\n")

                para (inteiro i = 0; i < 5; i++) {
                    escreva(matriz[i][coluna], "\n")
                }
            } senao se (opcao == 6) {
                // Mostra todos os valores da linha X
                inteiro linha
                escreva("Digite o número da linha (0 a 4): ")
                leia(linha)
                escreva("\n")

                para (inteiro j = 0; j < 5; j++) {
                    escreva(matriz[linha][j], "\t")
                }
                escreva("\n")
            } senao se (opcao == 7) {
                // Exibe apenas os números ímpares
                para (inteiro i = 0; i < 5; i++) {
                    para (inteiro j = 0; j < 5; j++) {
                        se (matriz[i][j] % 2 != 0) {
                            escreva(matriz[i][j], "\t")
                        } senao {
                            escreva(" \t")
                        }
                    }
                    escreva("\n")
                }
            } senao se (opcao != 0) {
                escreva("Opção inválida. Por favor, escolha uma opção de 0 a 7.\n")
            }
            escreva("\n")
        } enquanto (opcao != 0)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 324; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */