programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, n3

		escreva("Primeiro valor inteiro: ") leia(n1)
		escreva("Segundo valor inteiro: ") leia(n2)
		escreva("Terceiro valor inteiro: ") leia(n3)

		se(n1 % 2 == 0 e n1 < n2 e n1 < n3){escreva("\n", n1, " é par e, também, o menor valor.\n")}
		se(n2 % 2 == 0 e n2 < n1 e n2 < n3){escreva("\n", n2, " é par e, também, o menor valor.\n")}
		se(n3 % 2 == 0 e n3 < n1 e n3 < n2){escreva("\n", n3, " é par e, também, o menor valor.\n")}
		se(n1 % 2 != 0 e n1 < n2 e n1 < n3){escreva("\n", n1, " é ímpar e, também, o menor valor.\n")}
		se(n2 % 2 != 0 e n2 < n1 e n2 < n3){escreva("\n", n2, " é ímpar e, também, o menor valor.\n")}
		senao se(n3 % 2 != 0 e n3 < n1 e n3 < n2){escreva("\n", n3, " é ímpar e, também, o menor valor.\n")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */