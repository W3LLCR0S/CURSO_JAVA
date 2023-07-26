programa
{
	
	funcao exibirConteudo(cadeia s)
{
    escreva("\n", s, "\n\n")
    aguardarTecla()
}

funcao aguardarTecla()
{
    escreva("Pressione ENTER para continuar...")
    cadeia tecla
    leia(tecla)
}

funcao menu()
{
    inteiro opcao
    
    faca
    {
        escreva("---- DESAFIO DE MATEMÁTICA ----\n\n")
        escreva("Escolha um conteúdo:\n")
        escreva("1. Operações com números inteiros\n")
        escreva("2. Operações com números decimais\n")
        escreva("3. Propriedades das operações\n")
        escreva("4. Frações\n")
        escreva("5. Porcentagem\n")
        escreva("0. Sair\n\n")
        escreva("Digite o número correspondente à opção desejada: ")
        leia(opcao)
        
        escolha(opcao)
        {
            caso 1:
                exibirConteudo("Operações com números inteiros:\n\n- Adição\n- Subtração\n- Multiplicação\n- Divisão\n- Potenciação\n- Radiciação")
                pare
                
            caso 2:
                exibirConteudo("Operações com números decimais:\n\n- Adição\n- Subtração\n- Multiplicação\n- Divisão\n- Arredondamento\n- Notação científica")
                pare
                
            caso 3:
                exibirConteudo("Propriedades das operações:\n\n- Comutativa\n- Associativa\n- Distributiva\n- Elemento neutro\n- Elemento inverso")
                pare
                
            caso 4:
                exibirConteudo("Frações:\n\n- Conceito de fração\n- Adição e subtração de frações\n- Multiplicação e divisão de frações\n- Simplificação de frações")
                pare
                
            caso 5:
                exibirConteudo("Porcentagem:\n\n- Conceito de porcentagem\n- Cálculo de porcentagem\n- Aumento e desconto percentual\n- Juros simples")
                pare
                
            caso 0:
                escreva("Saindo do programa...")
                pare
                
            caso contrario:
                escreva("Opção inválida! Tente novamente.")
                pare
        }
        
    } enquanto (opcao != 0)
}

funcao inicio()
{
    menu()
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2117; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */