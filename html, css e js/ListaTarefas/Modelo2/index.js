const texto = document.querySelector('input')
const btnInserir = document.querySelector('.divInsercao button')
const btnApagarT = document.querySelector('.cabecalho button')
const ul = document.querySelector('ul')

var itensDB = []

/* Vamos incluir 2 eventos: 
1_para incluir ao teclar enter
2_incluir ao clicar no botão "+" */

texto.addEventListener('keypress', e => {
    if(e.key == 'Enter' && texto.value !=''){
        setItemDB()
    }
})

btnInserir.onclick = () => {
    if (texto.value !=''){
        setItemDB()
    }
}

function setItemDB() {
    if (itensDB.length >= 20){
        alert('Limite máximo de 20 itens inseridos!')
        return
    }
    itensDB.push({ 
        'item': texto.value, 
        'status': ''
    })
    atualizarDB()
}

function atualizarDB() {
    localStorage.setItem('listaTarefas', JSON.stringify(itensDB))
    carregarItens()
}

function carregarItens() {
    ul.innerHTML = "";  /* irá limpara para não duplicarmos */
    itensDB = JSON.parse(localStorage.getItem('listaTarefas')) ?? []
    itensDB.forEach((item, i) => {
        inserirItemTela(item.item, item.status, i)
    })
}

function inserirItemTela(text, status, i) {
    const li = document.createElement('li')

    li.innerHTML = `
        <div class="listagem">
            <input type="checkbox" ${status} data-i=${i} onchange="done(this, ${i});" />
            <span data-si=${i}>${text}</span>
            <button onclick="removeItem(${i})" data-i=${i}><i class='bx bxs-trash'></i></button>
        </div>
    `
    ul.appendChild(li)

    if (status) {
        document.querySelector(`[data-si="${i}"]`).classList.add('line-through')
    } else {
        document.querySelector(`[data-si="${i}"]`).classList.remove('line-through')
    }
  texto.value = ''
}

function done(chk, i) {
    if (chk.checked) {
      itensDB[i].status = 'checked' 
    } else {
      itensDB[i].status = '' 
    }
    atualizarDB()
}
  
function removeItem(i) {
    itensDB.splice(i, 1)
    atualizarDB()
}
  
btnApagarT.onclick = () => {
    itensDB = []
    atualizarDB()
}

carregarItens()