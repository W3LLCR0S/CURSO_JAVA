programa
{

    funcao inicio()
    {
        inteiro quantidadeAlunos

        escreva("Digite a quantidade de alunos a serem cadastrados (1 a 50): ")
        leia(quantidadeAlunos)

        cadeia alunos[50]
        real notas[50][3]
        cadeia resultados[50]

        // Cadastro dos alunos e suas notas
        para (inteiro i = 0; i < quantidadeAlunos; i++) {
            escreva("\n--- Cadastro do Aluno ", i + 1, " ---\n")
            escreva("Digite o nome do aluno: ")
            leia(alunos[i])

            para (inteiro j = 0; j < 3; j++) {
                escreva("Digite a nota ", j + 1, " do aluno ", alunos[i], ": ")
                leia(notas[i][j])
            }

            // Cálculo da média
            real media = (notas[i][0] + notas[i][1] + notas[i][2]) / 3

            // Definição do resultado
            se (media >= 60) {
                resultados[i] = "Aprovado"
            } senao {
                resultados[i] = "Reprovado"
            }
        }

        // Exibição do boletim
        escreva("\n--- Boletim ---\n")
        escreva("Aluno(a)\tNota 1\tNota 2\tNota 3\tMédia\tResultado\n")
        para (inteiro i = 0; i < quantidadeAlunos; i++) {
            escreva(alunos[i], "\t\t")
            para (inteiro j = 0; j < 3; j++) {
                escreva(notas[i][j], "\t")
            }
            escreva((notas[i][0] + notas[i][1] + notas[i][2]) / 3, "\t")
            escreva(resultados[i], "\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */