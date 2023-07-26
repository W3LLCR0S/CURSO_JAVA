let check = false;

function iniciar() {
    if (check === false) {
        let timer1 = setInterval(function() {
            start();
        }, 1000);
        let timer2 = setTimeout(function() {
            end();
        }, 13200);
        let count = 10;

        function start() {
            soundBeep();
            document.querySelector("#time").innerHTML = count;
            if (count === 0) {
                clearInterval(timer1);
                soundThunder();
                document.querySelector("#fire").src = "./images/explosion.gif";
                document.querySelector("#time").innerHTML = "GAME OVER";
            }
            count--;
        }
        check = true;
    }
}

function soundBeep() {
    let beep = new Audio();
    beep.src = "./sounds/Beep.mp3";
    beep.play();
}

function soundThunder() {
    let beep = new Audio();
    beep.src = "./sounds/Explosao.mp3";
    beep.play();
}

function end() {
    document.querySelector("#fire").src = "./images/clean.png";
}
