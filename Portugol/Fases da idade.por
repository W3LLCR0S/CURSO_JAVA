programa
{
	
	funcao inicio()
	{
		inteiro ano_atual, ano_nascimento, idade
		
		escreva("Insira o ano atual: ")
		leia(ano_atual)
		escreva("Insira o ano de nascimento: ")
		leia(ano_nascimento)

		idade = ano_atual - ano_nascimento
		
		escreva("\nA idade é: ", idade)
		
		se(idade >= 0 e idade <= 3){escreva(". Bebê.\n")}
		senao se(idade >= 4 e idade <= 10){escreva(". Criança.\n")}
		senao se(idade >= 11 e idade <= 18){escreva(". Adolescente.\n")}
		senao se(idade >= 19 e idade <= 50){escreva(". Adulto.\n")}
		senao se(idade >= 51){escreva(". Idoso\n")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 255; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */