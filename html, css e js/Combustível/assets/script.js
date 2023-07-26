let etanol, gasolina, valor1, valor2;

function calcular() {
    etanol = parseFloat(formularioFlex.valorEtanol.value.replace(",", "."));
    gasolina = parseFloat(formularioFlex.valorGasolina.value.replace(",", "."));

    valor1 = document.getElementById("valor1");
    valor2 = document.getElementById("valor2");

    if (etanol <= 0 && gasolina <= 0) {
        alert("Digite valores acima de 0 para o etanol e a gasolina.");
    } else if (etanol <= 0) {
        alert("Digite um valor acima de 0 para o etanol.");
    } else if (gasolina <= 0) {
        alert("Digite um valor acima de 0 para a gasolina.");
    } else if (valor1.value === "" || valor2.value === "") {
        alert("Preencha os valores corretamente para o etanol e a gasolina.");
    } else if (etanol <= 0.72 * gasolina) {
        alert("É mais vantajoso abastecer com etanol.");
        document.querySelector('#status').src = "image/alcool.png";
    } else if (etanol > 0 && gasolina > 0 && etanol > 0.72 * gasolina) {
        alert("É mais vantajoso abastecer com gasolina.");
        document.querySelector('#status').src = "image/gasolina.png";
    } else {
        alert("Informe os valores corretos para o etanol e a gasolina.");
    }
}

function limpar() {
    document.querySelector('#status').src = "image/neutro.png";
}