programa
{
	
	funcao inicio()
	{
		real nota

		escreva("Insira a nota do aluno: ")
		leia(nota)
		
		se(nota >= 9 e nota <= 10){escreva("Conceito A\n")}
		senao se(nota >= 7 e nota < 9){escreva("Conceito B\n")}
		senao se(nota >= 5 e nota < 7){escreva("Conceito C\n")}
		senao{escreva("Conceito D\n")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 179; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */