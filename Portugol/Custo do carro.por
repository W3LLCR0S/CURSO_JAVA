programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real custo_fabrica, impostos, custo_consumidor,
		percentagem_distribuidor = 0.28
		impostos = 0.45
		
		escreva("Insira o custo de fábrica do carro: ")
		leia(custo_fabrica)

		custo_consumidor = custo_fabrica + (custo_fabrica * percentagem_distribuidor) + (custo_fabrica * impostos)
		custo_consumidor = Matematica.arredondar(custo_consumidor, 2)
		escreva("O custo ao consumidor é: ", custo_consumidor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 474; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */