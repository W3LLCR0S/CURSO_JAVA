programa
{
    funcao inicio()
    {
        inteiro vetor1[5], vetor2[5], vetor3[5], i

	   escreva("Digite valores para o vetor 1:\n")
        para (i = 0; i < 5; i++) {
		  escreva("Valor ", i + 1, ": ")
	   	  leia(vetor1[i])
        }

        escreva("\nDigite valores para o vetor 2:\n")
        para (i = 0; i < 5; i++) {
		  escreva("Valor ", i + 1, ": ")
	   	  leia(vetor2[i])
        }

	   escreva("\n")
	   para (i = 0; i < 5; i++) {
            vetor3[i] = vetor1[i] + vetor2[i]
            escreva(vetor3[i], " ")
        }
        
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */