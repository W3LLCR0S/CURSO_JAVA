programa
{
	
	funcao inicio()
	{
		inteiro n1
		
		escreva("Insira o número: ")
		leia(n1)

		se(n1 % 2 == 0 e n1 < 0){escreva("O número é par negativo")}
		se(n1 % 2 == 0 e n1 > 0){escreva("O número é par positivo")}
		se(n1 % 2 != 0 e n1 < 0){escreva("O número é ímpar negativo")}
		senao se(n1 % 2 != 0 e n1 > 0){escreva("O número é ímpar positivo")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */