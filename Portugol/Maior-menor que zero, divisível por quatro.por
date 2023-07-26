programa
{
	
	funcao inicio()
	{
		inteiro n1

		escreva("Insira um número inteiro: ")
		leia(n1)

		se(n1 > 0 e n1 % 4 == 0){escreva("O número é maior que zero e divisível por 4.\n")}
		senao se(n1 > 0 e n1 % 4 != 0){escreva("O número é maior que zero e não é divisível por 4.\n")}
		senao se(n1 == 0){escreva("O número é igual a 0 e não é divisível por 4.\n")}
		senao se(n1 < 0 e n1 % 4 == 0){escreva("O número é menor que zero e divisível por 4.\n")}
		senao se(n1 < 0 e n1 % 4 != 0){escreva("O número é menor que zero e não é divisível por 4.\n")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 547; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */