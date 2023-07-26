programa
{
    funcao inicio()
    {
        cadeia nomes[5]
        inteiro i

        para (i = 0; i < 5; i++) {
            escreva("Digite o nome ", i + 1, ": ")
            leia(nomes[i])
        }

        para (i = 0; i < 5; i++) {
            escreva(i + 1, " - ", nomes[i], "\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */