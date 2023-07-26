programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		cadeia opcao
		inteiro sorte[6]
		
		escreva("Quer fazer o sorteio? (s/n): ")
		leia(opcao)

          se (opcao == "s") {
          	para (inteiro i = 0; i < 6; i++) {
                sorte[i] = Util.sorteia(1, 60)
                escreva(sorte[i], " ")}
                }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 60; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */