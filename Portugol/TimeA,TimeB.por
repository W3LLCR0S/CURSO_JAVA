programa
{
	
	funcao inicio()
	{
		cadeia nome1, nome2
		inteiro g1, g2, sg1, sg2
		
		escreva("Insira o nome do primeiro time: ")
		leia(nome1)
		escreva("Insira o nome do segundo time: ")
		leia(nome2)
		escreva("Insira a quantidade de gols do primeiro time: ")
		leia(g1)
		escreva("Insira a quantidade de gols do segundo time: ")
		leia(g2)

		sg1 = g1 - g2
		sg2 = g2 - g1
		
		se(g1 > g2 e sg1 >= 4){escreva("\n", nome1, " ganhou de goleada. A diferença de gols foi: ", sg1)}
		se(g1 > g2 e sg1 <= 3 e sg1 >0){escreva("\n", nome1, " ganhou. A diferença de gols foi: ", sg1)}
		se(g1 == g2){escreva("\n", nome1, " empatou com ", nome2)}
		se(g2 > g1 e sg2 >= 4){escreva("\n", nome1, " ganhou de goleada. A diferença de gols foi: ", sg2)}
		se(g2 > g1 e sg2 <= 3 e sg2 >0){escreva("\n", nome1, " ganhou. A diferença de gols foi: ", sg2)}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 753; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */