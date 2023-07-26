function play(playerChoice) {
    const choices = [
        { name: 'pedra', image: 'pedra.png' },
        { name: 'papel', image: 'papel.png' },
        { name: 'tesoura', image: 'tesoura.png' }
    ];
    const computerChoice = choices[Math.floor(Math.random() * choices.length)];

    // Atualizar as opções do jogador para desativar os botões
    const buttons = document.querySelectorAll('button');
    buttons.forEach(button => {
        button.disabled = true;
    });

    // Exibir a escolha do jogador
    document.getElementById('player-choice').src = playerChoice + '.png';

    // Simular a escolha do computador com um pequeno atraso
    setTimeout(() => {
        // Exibir a escolha do computador
        document.getElementById('computer-choice').src = computerChoice.image;

        // Comparar as escolhas e determinar o vencedor
        if (playerChoice === computerChoice.name) {
            document.getElementById('result').innerHTML = "<p>Empate!</p>";
        } else if (
            (playerChoice === 'pedra' && computerChoice.name === 'tesoura') ||
            (playerChoice === 'papel' && computerChoice.name === 'pedra') ||
            (playerChoice === 'tesoura' && computerChoice.name === 'papel')
        ) {
            document.getElementById('result').innerHTML = "<p>Você ganhou!</p>";
        } else {
            document.getElementById('result').innerHTML = "<p>Você perdeu!</p>";
        }

        // Reativar os botões para uma nova jogada
        buttons.forEach(button => {
            button.disabled = false;
        });
    }, 1000);
}
