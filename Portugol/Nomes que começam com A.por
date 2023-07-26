programa
{
    inclua biblioteca Texto

    funcao inicio()
    {
        inteiro contador = 0, i
        cadeia nomes[10]

        para (i = 0; i < 10; i++) {
            escreva("Digite o nome ", i + 1, ": ")
            leia(nomes[i])
        }

	   escreva("\n")
        para (i = 0; i <10; i++) {
            cadeia nomeMaiusculo = Texto.caixa_alta(nomes[i])
            se (Texto.obter_caracter(nomeMaiusculo, 0) == 'A') {
                contador = contador + 1
                escreva("Nome começando com A na posição ", i + 1, ": ", nomes[i], "\n")
            }
        }

        escreva("\nTotal de nomes começando com A: ", contador)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 247; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */