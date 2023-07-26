programa
{
	
	funcao inicio()
	{
		inteiro n1, n2 
		caracter sinal
		
		escreva("Escreva o primeiro número: \n")
		leia(n1)
		escreva("Digite um sinal para comparar com o próximo número:\n< menor\n> maior\n≤ menor ou igual\n≥ maior ou igual\n≠ diferente\n= igual\n")
		leia(sinal)
		escreva("Escreva o segundo número: \n")
		leia(n2)

		escolha(sinal){
			caso '<': se(n1 < n2){escreva("\n", n1, " é menor que ", n2)} senao {escreva("\n", n1, " não é menor que ", n2)} pare
			caso '>': se(n1 > n2){escreva("\n", n1, " é maior que ", n2)} senao {escreva("\n", n1, " não é maior que ", n2)} pare
			caso '≥': se(n1 >= n2){escreva("\n", n1, " é maior ou igual que ", n2)} senao {escreva("\n", n1, " não é maior ou igual que ", n2)} pare
			caso '≤': se(n1 <= n2){escreva("\n", n1, " é menor ou igual que ", n2)} senao {escreva("\n", n1, " não é menor ou igual que ", n2)} pare
			caso '≠': se(n1 != n2){escreva("\n", n1, " é diferente de ", n2)} senao {escreva("\n", n1, " não é diferente de ", n2)} pare
			caso '=': se(n1 == n2){escreva("\n", n1, " é igual a ", n2)} senao {escreva("\n", n1, " não é igual a ", n2)}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 203; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */