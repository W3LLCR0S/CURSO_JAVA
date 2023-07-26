programa
{
    funcao inicio()
    {
        cadeia nome_produto, nome_maior_valor = "", nome_menor_valor = "", resposta_continuar
        real valor_produto, maior_valor = 0.0, menor_valor = 0.0, soma_valores = 0.0
        inteiro quantidade_produto = 0, total_produtos = 0
        logico continuar = verdadeiro

	   limpa()

        enquanto (continuar) {
            escreva("Insira o nome do produto: ")
            leia(nome_produto)
            escreva("Insira o valor do produto: ")
            leia(valor_produto)
            escreva("Insira a quantidade do produto: ")
            leia(quantidade_produto)

            escreva("Nome do produto: ", nome_produto, "\n")
            escreva("Valor do produto: ", valor_produto, "\n")

            se (valor_produto > maior_valor) {
                maior_valor = valor_produto
                nome_maior_valor = nome_produto
            }

            se (menor_valor == 0 ou valor_produto < menor_valor) {
                menor_valor = valor_produto
                nome_menor_valor = nome_produto
            }

            total_produtos += quantidade_produto
            soma_valores += valor_produto * quantidade_produto

            escreva("Produto de maior valor: ", nome_maior_valor, " - ", maior_valor, "\n")
            escreva("Produto de menor valor: ", nome_menor_valor, " - ", menor_valor, "\n")

            escreva("Deseja continuar a inserção de dados? (s/n): ")
            leia(resposta_continuar)
            continuar = (resposta_continuar == "s")
        }

        escreva("Quantidade total de produtos inseridos: ", total_produtos, "\n")
        escreva("Média dos valores dos produtos: ", soma_valores / total_produtos, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 326; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */