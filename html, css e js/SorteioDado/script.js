function rollDice() {
    var diceFace = document.getElementById("dice-face");
    var diceFaceLabel = document.getElementById("dice-face-label");

    var diceFaces = [
        { number: 1, emoji: "&#9856;" },
        { number: 2, emoji: "&#9857;" },
        { number: 3, emoji: "&#9858;" },
        { number: 4, emoji: "&#9859;" },
        { number: 5, emoji: "&#9860;" },
        { number: 6, emoji: "&#9861;" }
    ];

    var randomNumber = Math.floor(Math.random() * 6);
    var selectedFace = diceFaces[randomNumber];

    diceFace.innerHTML = selectedFace.emoji;
    diceFaceLabel.innerHTML = "Face " + selectedFace.number;
}