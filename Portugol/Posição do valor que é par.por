programa
{
    funcao inicio()
    {
        inteiro valores[10], i, contador = 0

        para (i = 0; i < 10; i++) {
            escreva("Digite o valor ", i + 1, ": ")
            leia(valores[i])
        }

	   escreva("\n")
        para (i = 0; i < 10; i++) {
            se (valores[i] % 2 == 0) {
                contador++
                escreva("Valor par na posição ", i + 1, ": ", valores[i], "\n")
            }
        }

        escreva("\nTotal de valores pares: ", contador)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 228; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */