programa
{
	
	funcao inicio()
	{
		real n1, n2, media

		escreva("Insira a primeira nota: ")
		leia(n1)
		escreva("Insira a segunda nota: ")
		leia(n2)

		media = (n1 + n2)/2
		escreva("Sua média é ", media)

		se(media >= 7.0){escreva(".\nParabéns! Você foi aprovado(a) :)")} senao{escreva("\nVocê está de recuperação")}
		se(media < 5.0){escreva(".\nInfelizmente você não foi aprovado(a) :(")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */