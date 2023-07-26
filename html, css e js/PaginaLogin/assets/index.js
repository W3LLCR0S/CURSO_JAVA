let contador = 3;
const usuario = "Senac";
const snh = 123;


function logar() {
    let login = document.getElementById('login').value
    let senha = document.getElementById('senha').value

    if (senha == "010101" && login == "MR-X") {
        var sumidao = document.getElementById('conteiner');
        sumidao.style.display = 'none';

        const canvas = document.querySelector('#canv');
        const ctx = canvas.getContext('2d');
        const w = canvas.width = window.innerWidth;
        const h = canvas.height = window.innerHeight;
        const cols = Math.floor(w / 10) + 1;
        const yPos = Array(cols).fill(0);

        ctx.fillStyle = '#0001';
        ctx.fillRect(0, 0, w, h);

        function DesenhaMatri() {
            ctx.fillStyle = '#0001'
            ctx.fillRect(0, 0, w, h);

            ctx.fillStyle = '#7fffaa'
            ctx.font = '18pt monospace'

            yPos.forEach((y, ind) => {
                const text = Math.floor(Math.random() * 2);
                const x = ind * 10;
                ctx.fillText(text, x, y);

                if (y > 100 + Math.random() * 10000) yPos[ind] = 0;
                else yPos[ind] = y + 19;
            });
        }
        setInterval(DesenhaMatri, 50);

    } else {
        if (snh == senha && usuario == login) {
            alert(`Bem vindo ${usuario}!`)
        } else {
            alert("Usuário ou senha incorreta! Tente Novamente")
            contador--
            if (contador == 0) {
                alert("Usuário ou senha incorreta! Não há mais tentativas")
            }
        }
    }
}
