programa
{
	
	funcao inicio()
	{
		real n1, n2, n3
		logico eq, esc, iso, nt
		
		escreva("Insira o valor do primeiro lado: ")
		leia(n1)
		escreva("Insira o valor do segundo lado: ")
		leia(n2)
		escreva("Insira o valor do terceiro lado: ")
		leia(n3)

		nt = n1 < (n2 + n3) e n2 < (n1 + n3) e n3 < (n1 + n2)
		eq = (n1 == n2) e (n1 == n3)
		esc = (n1 != n2) e (n1 != n3) e (n2 != n3)
		
		se(nt){
			se(eq){escreva("Triângulo equilátero.")}
			senao se(esc){escreva("Triângulo escaleno.")}
			senao{escreva("Triângulo isósceles.")}
			} 
		senao{escreva("Triângulo impossível.")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */