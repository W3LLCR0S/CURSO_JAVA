programa
{
	
	funcao inicio()
	{
		cadeia nome1, nome2, genero1, genero2

		escreva("Insira o nome da primeira pessoa: ")
		leia(nome1)
		escreva("Insira o gênero da primeira pessoa (M para Masculino ou F para Feminino): ")
		leia(genero1)
		
		escreva("Insira o nome da segunda pessoa: ")
		leia(nome2)
		escreva("Insira o gênero da segunda pessoa (M para Masculino ou F para Feminino): ")
		leia(genero2)
		
		se(genero1 != genero2){escreva("\n", nome1, " e ", nome2, " formam um par")}
		senao{escreva("\nImpossibilidade de formação de par")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 451; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */