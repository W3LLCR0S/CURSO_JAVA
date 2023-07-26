programa
{
	inclua biblioteca Matematica
		
	funcao inicio()
	{
		cadeia nome
		real salario, salario2, salario3, salario4
		
		escreva("Nome: ")
		leia(nome)
		escreva("Salário atual (R$): ")
		leia(salario)

		salario2 = salario * 0.2 + salario
		salario3 = salario * 0.1 + salario
		salario4 = salario * 0.02 + salario

		salario2 = Matematica.arredondar(salario2, 2)
		salario3 = Matematica.arredondar(salario3, 2)
		salario4 = Matematica.arredondar(salario4, 2)

		se(salario <= 1000.00 e salario >= 0.00){escreva("\n", nome, ", seu salário reajustado é R$ ", salario2, "\n")}
		se(salario <= 5000.00 e salario >= 1000.01){escreva("\n", nome, ", seu salário reajustado é R$ ", salario3, "\n")}
		senao se(salario >= 5000.01){escreva("\n", nome, ", seu salário reajustado é R$ ", salario4, "\n")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */