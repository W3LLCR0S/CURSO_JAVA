programa
{
	
	funcao inicio()
	{
		cadeia nome[5]
		inteiro i
		
		para (i=0; i<5; i++){
			escreva("Informe o ", i + 1, "º Nome: ")
			leia(nome[i])
		}

		para (i=4; i>=0; i--){
			escreva("\n", nome[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 222; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */