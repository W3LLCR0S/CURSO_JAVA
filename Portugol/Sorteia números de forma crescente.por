programa
{
	inclua biblioteca Util

	funcao inicio()
	{
		inteiro num[10], i, c, aux

		para (i=0; i<10; i++) {
			num[i] = Util.sorteia(1, 100)
		}
		para (i=0; i<9; i++) {
			para (c=i+1; c<10; c++) {
				se (num[i] > num[c]) {
					aux = num[i]
					num[i] = num[c]
					num[c] = aux
				}
			}
		}
		para (i=0; i<10; i++) {
			escreva(num[i], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 113; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */