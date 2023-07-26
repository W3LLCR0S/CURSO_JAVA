$(document).ready(function () {
    const message1 = $("#message1");
    const message2 = $("#message2");
    const container = $(".container");
    let isColumn = true;
    let isAnimating = false;

    // Estado original das mensagens
    const originalMessages = {
        message1Text: message1.text(),
        message2Text: message2.text(),
        message1Color: message1.css("color"),
        message2Color: message2.css("color"),
    };

    // Mudar Cores
    $("#changeColor").click(function () {
        message1.css("color", getRandomColor());
        message2.css("color", getRandomColor());
    });

    // Mudar Posições
    $("#changePosition").click(function () {
        if (isColumn) {
            container.css("flex-direction", "row");
            $(".buttons").after(container);
        } else {
            container.css("flex-direction", "row");
            $(".buttons").before(container);
        }
        isColumn = !isColumn;
    });

    // Alternar Visibilidade
    $("#toggleVisibility").click(function () {
        message1.toggle();
        message2.toggle();
    });

    // Alternar Animação
    $("#toggleAnimation").click(function () {
        isAnimating = !isAnimating;
        message1.toggleClass("animating", isAnimating);
        message2.toggleClass("animating", isAnimating);
    });

    // Trocar Mensagens
    $("#swapMessages").click(function () {
        const tempMessage = message1.text();
        const tempColor = message1.css("color");
        message1.text(message2.text());
        message2.text(tempMessage);
        message1.css("color", message2.css("color"));
        message2.css("color", tempColor);
    });

    // Resetar
    $("#reset").click(function () {
        // Restaurar cores e texto das mensagens
        message1.text(originalMessages.message1Text);
        message2.text(originalMessages.message2Text);
        message1.css("color", originalMessages.message1Color);
        message2.css("color", originalMessages.message2Color);

        // Restaurar posição das mensagens
        if (!isColumn) {
            container.css("flex-direction", "row");
            $(".buttons").before(container);
            isColumn = true;
        }

        // Desativar animação
        isAnimating = false;
        message1.removeClass("animating");
        message2.removeClass("animating");
    });

    function getRandomColor() {
        const letters = "0123456789ABCDEF";
        let color = "#";
        for (let i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }
});