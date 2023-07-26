programa
{
    funcao inicio()
    {
        cadeia times[4], tabelaJogos[4][4]

        para (inteiro i = 0; i < 4; i++) {
            escreva("Digite o nome do time ", i + 1, ": ")
            leia(times[i])
        }

        escreva("\nJogos:\n")

        para (inteiro i = 0; i < 4; i++) {
            para (inteiro j = 0; j < 4; j++) {
                se (i != j) {
                    tabelaJogos[i][j] = times[i] + " x " + times[j]
                } senao {
                    tabelaJogos[i][j] = " - " // marcação para os jogos entre o mesmo time
                }
            }
        }

        para (inteiro i = 0; i < 4; i++) {
            para (inteiro j = 0; j < 4; j++) {
                escreva(tabelaJogos[i][j], "\t")
            }
            escreva("\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 62; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */