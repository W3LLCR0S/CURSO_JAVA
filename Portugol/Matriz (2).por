programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro sorteado,l,c, matriz1[5][5]

		para (l=0; l<5; l++){
			para (c=0; c<5; c++){
				matriz1[l][c] = u.sorteia(0,9)
			}
		}
		
		para (l=0; l<5; l++) {
			para (c=0; c<5 ; c++){
				escreva(matriz1[l][c], " | ")
			}
			escreva("\n")
		}
		escreva("------Diagonal Principal-------\n")
		para (l=0; l<5; l++) {
			para (c=0; c<5 ; c++){
				se (l == c) {
				   escreva(matriz1[l][c], " | ")
				} senao {
					escreva("  | ")
				}
			}
			escreva("\n")
		}
		escreva("-----Tri Superior------\n")
		para (l=0; l<5; l++) {
			para (c=0; c<5 ; c++){
				se (l < c) {
				   escreva(matriz1[l][c], " | ")
				} senao {
					escreva("  | ")
				}
			}
			escreva("\n")
		}
		escreva("-----Tri Inferior------\n")
		para (l=0; l<5; l++) {
			para (c=0; c<5 ; c++){
				se (l > c) {
				   escreva(matriz1[l][c], " | ")
				} senao {
					escreva("  | ")
				}
			}
			escreva("\n")
		}
		escreva("-----valores coluna 3------\n")
		para (l=0; l<5; l++) {
			para (c=0; c<5 ; c++){
				se (c == 3) {
				   escreva(matriz1[l][c], " | ")
				} senao {
					escreva("  | ")
				}
			}
			escreva("\n")
		}
		escreva("-----valores linha 3------\n")
		para (l=0; l<5; l++) {
			para (c=0; c<5 ; c++){
				se (l == 3) {
				   escreva(matriz1[l][c], " | ")
				} senao {
					escreva("  | ")
				}
			}
			escreva("\n")
		}
		escreva("-----valores impares------\n")
		para (l=0; l<5; l++) {
			para (c=0; c<5 ; c++){
				se (matriz1[l][c] % 2 != 0) {
				   escreva(matriz1[l][c], " | ")
				} senao {
					escreva("  | ")
				}
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
 * @POSICAO-CURSOR = 1526; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */