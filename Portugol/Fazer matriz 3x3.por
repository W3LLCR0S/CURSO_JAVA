programa
{
	
	funcao inicio()
	{
		inteiro m1[3][3], m2[3][3], m3[3][3]

		escreva("Insira 9 valores para a matriz 1: \n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				leia(m1[i][j])
			}
		}

		escreva("Insira 9 valores para a matriz 2: \n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				leia(m2[i][j])
			}
		}

		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				m3[i][j] = m1[i][j] + m2[i][j]
			}
		}

		escreva("\nMatriz 1:\n\n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				escreva(m1[i][j], "\t")
			}
			escreva("\n")
		}

		escreva("\nMatriz 2:\n\n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				escreva(m2[i][j], "\t")
			}
			escreva("\n")
		}

		escreva("\nMatriz 1 + Matriz 2:\n\n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				escreva(m3[i][j], "\t")
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
 * @POSICAO-CURSOR = 988; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */