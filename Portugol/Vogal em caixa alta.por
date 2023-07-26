programa
{
	inclua biblioteca Texto
	
	funcao inicio()
	{
		cadeia c1

		escreva("Insira uma letra: ")
		leia(c1)

		se(c1 == "a" ou c1 == "e" ou c1 == "i" ou c1 == "o" ou c1 == "u"){escreva(Texto.caixa_alta(c1))}
		senao{escreva("Digite uma vogal.")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 73; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */