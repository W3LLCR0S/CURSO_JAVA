programa
{
    funcao inicio()
    {
        inteiro valores[7], i, contador = 0
        logico Primo

        para (i = 0; i < 7; i++) {
            escreva("Digite o valor ", i + 1, ": ")
            leia(valores[i])
        }

        para (i = 0; i < 7; i++) {
            Primo = verdadeiro
            se (valores[i] <= 1) {
                Primo = falso
            } senao {
                para (inteiro j = 2; j <= valores[i] / 2; j++) {
                    se (valores[i] % j == 0) {
                        Primo = falso
                        pare
                    }
                }
            }
            se (Primo) {
            	 escreva("\n")
                contador++
                escreva("Valor primo: ", valores[i])
            }
        }

        escreva("\n\nTotal de valores primos: ", contador)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 795; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */