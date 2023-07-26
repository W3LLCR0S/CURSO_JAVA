programa
{
	
	funcao inicio()
	{
		cadeia nome1
		real nota1, nota2, nota3, media
		
		escreva("Aluno: ")
		leia(nome1)

		escreva("\nPrimeira nota: ") leia(nota1)
		escreva("Segunda nota: ") leia(nota2)
		escreva("Terceira nota: ") leia(nota3)

		media = (nota1 + nota2 + nota3)/3

		se(media >= 8.0){escreva("\nSeu conceito é A.")}
		se(media >= 5.0 e media < 8.0){escreva("\nSeu conceito é B.")}
		senao se(media < 5.0){escreva("\nSeu conceito é C.")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 439; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */