programa
{
	
	funcao inicio()
	{
		inteiro op

		escreva("Escolha o estado civil: \n\n(1) Solteiro\n(2) Casado\n(3) Divorciado\n(4) Viúvo\n(5) Amasiado\n(6) Outro\n\n")
		leia(op)

		se(op == 1){escreva("Você é solteiro(a).")}
		senao se(op == 2){escreva("Você é casado(a).")}
		senao se(op == 3){escreva("Você é divorciado(a).")}
		senao se(op == 4){escreva("Você é viúvo(a).")}
		senao se(op == 5){escreva("Você é amasiado(a).")}
		senao se(op == 6){escreva("Você escolheu a opção OUTRO.")}
		senao{escreva("Opção invalida")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 45; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */