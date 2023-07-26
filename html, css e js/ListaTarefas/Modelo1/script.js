const btnAdicionar = document.querySelector("#btnAdicionar"); // seleciona o botão

// Cria um evento de click para o botão, que irá executar a função anonima:
btnAdicionar.addEventListener("click", function () {
  const item = document.createElement("li"); // Cria elemento li novo
  const caixaValor = document.querySelector("#minhaCaixa").value; // Pega texto digitado no input
  const novaTarefa = document.createTextNode(caixaValor); // Add o texto do input na const taskText
  item.appendChild(novaTarefa); // Adiciona o texto na li

  // Verifica se o input está vazio
  if (caixaValor === "") {
    alert("Você deve digitar algum texto para adicionar!");
  } else {
    document.getElementById("itens").appendChild(item); // Add a li na ul
  }

  document.querySelector("#minhaCaixa").value = ""; // Zera o input

  // Botão Apagar
  const span = document.createElement("span"); // Cria um elemento span
  const icon = document.createTextNode("X"); // Adiciona um texto no HTML que é o código do icone X, porém em formato para JS
  span.className = "fechar"; // Adiciona a classe close a essa span
  span.appendChild(icon); // Insere o icon na span
  item.appendChild(span); // Insere a span na li criada

  // Apagar uma tarefa
  const close = document.querySelectorAll(".fechar"); // Captura todas as spans de fechar

  // Varre a lista de spanas e verifica uma por uma, qual foi clicada
  for (let i = 0; i < close.length; i++) {
    close[i].addEventListener("click", function () {
      const item = this.parentElement; // Captura a tag pai dessa (this) tag span, no caso a li
      item.style.display = "none"; // Muda o display da li para "none" fazendo ela sumir da tela.
    });
  }
});

// Marcar como "tarefa feita"
const list = document.querySelector("ul"); // Captura a lista inteira

// Ao clicar na lista a minha função recebe um evento
list.addEventListener("click", function (ev) {
  // Se o nome do item que eu cliquei na lista foi "LI"
  if (ev.target.nodeName === "LI") {
    ev.target.classList.toggle("checado"); // Adiciona nesse elemento a classe "checked"
  }
});