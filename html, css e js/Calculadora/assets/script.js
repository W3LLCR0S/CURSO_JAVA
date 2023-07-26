let display = document.getElementById('display');
let historicList = document.getElementById('historic-list');
let clearButton = document.getElementById('clear-button');

let historic = [];

function appendNumber(number) {
    display.value += number;
}

function appendOperator(operator) {
    display.value += operator;
}

function clearDisplay() {
    display.value = '';
}

function calculate() {
    const display = document.getElementById('display');
    let input = display.value;

    // Remove os zeros à esquerda do input
    input = input.replace(/^0+/, '');

    try {
        const result = eval(input);
        display.value = result;
        updateHistoric(input + '=' + result); // Atualiza o histórico com o cálculo completo
    } catch (error) {
        display.value = 'Erro';
    }
}

function checkSequence() {
    const display = document.getElementById('display');
    const input = display.value;

    console.log(input);
    if (input == 123) {
        alert('Olá, agente Paulo!');
    }
}

function updateHistoric(expression) {
    historic.push(expression);
    const li = document.createElement('li');
    li.textContent = expression;
    historicList.appendChild(li);

    // Verifica se o histórico excedeu a altura da página
    if (historicList.offsetHeight > window.innerHeight) {
        clearHistoric(); // Limpa o histórico
    }
}

function clearHistoric() {
    historic = [];
    historicList.innerHTML = '';
}

function handleKeyPress(event) {
    const key = event.key.toLowerCase(); // Converter a tecla para minúsculo

    switch (key) {
        case '0':
            appendNumber(0);
            break;
        case '1':
            appendNumber(1);
            break;
        case '2':
            appendNumber(2);
            break;
        case '3':
            appendNumber(3);
            break;
        case '4':
            appendNumber(4);
            break;
        case '5':
            appendNumber(5);
            break;
        case '6':
            appendNumber(6);
            break;
        case '7':
            appendNumber(7);
            break;
        case '8':
            appendNumber(8);
            break;
        case '9':
            appendNumber(9);
            break;
        case '+':
            appendOperator('+');
            break;
        case '-':
            appendOperator('-');
            break;
        case '*':
            appendOperator('*');
            break;
        case '/':
            appendOperator('/');
            break;
        case '.':
            appendOperator('.');
            break;
        case '=':
        case 'enter':
            calculate();
            checkSequence();
            updateHistoric();
            break;
        case 'c':
            clearDisplay();
            break;
        default:
            break;
    }
}

// Adicionar evento de teclado ao documento
document.addEventListener('keydown', handleKeyPress);