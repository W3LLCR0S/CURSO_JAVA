programa
{
	
	funcao inicio()
	{
		real n1, n2, n3, soma
		
		escreva("Insira o primeiro número: ")
		leia(n1)
		escreva("Insira o segundo número: ")
		leia(n2)
		escreva("Insira o terceiro número: ")
		leia(n3)

		soma = n1 + n2

		se(soma < n3){escreva("\nA soma do primeiro e segundo número é menor que o terceiro número.")} 
		se(soma == n3){escreva("a soma do primeiro e segundo número é igual ao terceiro número")} 
		senao{escreva("\nA soma do primeiro e segundo número é maior que o terceiro número.")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 515; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */