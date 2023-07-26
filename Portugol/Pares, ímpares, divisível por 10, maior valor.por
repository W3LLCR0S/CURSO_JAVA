programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{

	inteiro n[20], opcao, i

	para (i=0; i<20; i++) {
		n[i] = Util.sorteia(1, 60)
		escreva(n[i], " ")
	}
	
	faca {
            escreva("\n\nOpções:\n")
            escreva("1. Números pares sorteados\n")
            escreva("2. Números ímpares sorteados\n")
            escreva("3. Números divisíveis por 10\n")
            escreva("4. Maior valor\n")
            escreva("0. Sair\n\n")

            escreva("Digite a opção desejada: ")
            leia(opcao)
            escreva("\n")

            escolha (opcao) {
                caso 1:
                para (i = 0; i < 20; i++) {se (n[i] % 2 == 0) {escreva(n[i], " ")}}
                pare

                caso 2:
                para (i = 0; i < 20; i++) {se (n[i] % 2 != 0) {escreva(n[i], " ")}}
                pare
                
                caso 3:
                para (i = 0; i < 20; i++) {se (n[i] % 10 == 0) {escreva(n[i], " ")}}
                pare

                caso 4:
                para (i = 0; i < 20; i++) {se (n[i] % 10 == 0) {escreva(n[i], " ")}}
                pare
                
                caso 0:
                    escreva("Saindo...\n")
                    pare

                caso contrario:
                    escreva("Opção inválida. Digite novamente.\n")
            }
            escreva("\n")

        } enquanto (opcao != 0)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 201; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */