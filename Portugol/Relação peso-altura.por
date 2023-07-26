programa
{
	inclua biblioteca Matematica 
	
	funcao inicio()
	{
		real peso, altura, mc
		
		escreva("Insira seu peso: ")
		leia(peso)
		escreva("Insira seu peso: ")
		leia(altura)
		
		mc = peso / (altura * altura)

		se(mc > 0.0 e mc < 18.5){escreva("Abaixo do peso.")}
		senao se(mc >= 18.5 e mc <= 24.9){escreva("Peso normal.")}
		senao se(mc >= 25 e mc <= 29.9){escreva("Sobrepeso.")}
		senao se(mc >= 30 e mc <= 34.9){escreva("Obesidade Grau I.")}
		senao se(mc >= 35 e mc <= 39.9){escreva("Obesidade Grau II.")}
		senao se(mc >= 40){escreva("Obesidade Grau III.")}
		senao{escreva("Insira valores validos.")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 571; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */