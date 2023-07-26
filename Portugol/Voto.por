programa
{
	
	funcao inicio()
	{
		inteiro idade
		
		escreva("Insira a idade: ")
		leia(idade)
		
		se(idade < 16){escreva("Não pode votar.\n")}
		senao se(idade >= 16 e idade < 18 ou idade > 70){escreva("Voto facultativo.\n")}
		senao{escreva("Voto obrigatório.\n")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */