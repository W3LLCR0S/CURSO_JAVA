programa
{
	
	funcao inicio()
	{
		cadeia nome1, nome2, nome3
		real nota1, nota2, nota3
		
		escreva("Aluno 01: ")
		leia(nome1)
		escreva("insira sua nota: ")
		leia(nota1)
		
		escreva("\nAluno 02: ")
		leia(nome2)
		escreva("insira sua nota: ")
		leia(nota2)
		
		escreva("\nAluno 03: ")
		leia(nome3)
		escreva("insira sua nota: ")
		leia(nota3)

		se(nota1 > nota2 e nota1 > nota3){escreva("\n", nome1, " tem a maior nota!")}
		se(nota2 > nota1 e nota2 > nota3){escreva("\n", nome2, " tem a maior nota!")}
		senao se(nota3 > nota2 e nota3 > nota1){escreva("\n", nome3, " tem a maior nota!")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 610; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */