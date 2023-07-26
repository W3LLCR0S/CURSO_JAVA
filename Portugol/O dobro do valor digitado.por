programa
{
    funcao inicio()
    {
        inteiro vetor1[5], vetor2[5], i

        para (i = 0; i < 5; i++) {
		  escreva("Insira o valor ", i + 1, ": ")
	   	  leia(vetor1[i])
            vetor2[i] = vetor1[i] * 2
        }

        para (i = 0; i < 5; i++) {
            escreva(vetor2[i], " ")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 179; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */