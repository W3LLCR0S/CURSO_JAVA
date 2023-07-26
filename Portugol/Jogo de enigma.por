programa
{
    funcao inicio()
    {
        // Enigma
        escreva("Bem-vindo ao Enigma!\n")
        escreva("Aqui está o seu desafio:\n")
        escreva("Sou alto quando sou jovem e baixo quando sou velho. O que sou?\n")

        // Resposta do jogador
        cadeia resposta
        leia(resposta)

        // Verificar a resposta
        se (resposta == "vela") {
            escreva("Parabéns! Você acertou o enigma!\n")
        } senao {
            escreva("Resposta incorreta. Tente novamente!\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */