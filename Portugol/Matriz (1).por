programa
{
	funcao inicio()
	{
		inteiro matriz1[3][3]
		inteiro matriz2[3][3]
		inteiro matrizR[3][3]
		
		escreva("informe 5 valores para a matriz 1: ")
		para (inteiro l=0; l<3; l++) {
			para (inteiro c=0; c<3 ; c++){
				leia(matriz1[l][c])
			}
		}

		escreva("informe 5 valores para a matriz 2: ")
		para (inteiro l=0; l<3; l++) {
			para (inteiro c=0; c<3 ; c++){
				leia(matriz2[l][c])
			}
		}

		para (inteiro l=0; l<3; l++) {
			para (inteiro c=0; c<3 ; c++){
				matrizR[l][c] = matriz1[l][c] + matriz2[l][c]
			}
		}

		escreva("------------------------------------\n")
		para (inteiro l=0; l<3; l++) {
			para (inteiro c=0; c<3 ; c++){
				escreva(matriz2[l][c], " | ")
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
 * @POSICAO-CURSOR = 711; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz1, 5, 10, 7}-{matriz2, 6, 10, 7}-{matrizR, 7, 10, 7}-{l, 10, 16, 1}-{c, 11, 17, 1}-{l, 17, 16, 1}-{c, 18, 17, 1}-{l, 23, 16, 1}-{c, 24, 17, 1}-{l, 30, 16, 1}-{c, 31, 17, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */