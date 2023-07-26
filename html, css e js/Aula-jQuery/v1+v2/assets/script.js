// js:

const btnSoma_js = document.querySelector('#btnSoma_js')

btnSoma_js.addEventListener('click', () => {
    let v1 = parseInt(document.querySelector('#v1').value)
    let v2 = parseInt(document.querySelector('#v2').value)
    let soma = v1 + v2
    document.querySelector('#res').value = soma
})

// jQuery:

// jquery('#btnSoma_jq').click(() => {
//     let v1 = parseInt.jquery('#v1').value
//     let v2 = parseInt.jquery('#v2').value
// })

// a palavra 'jquery' pode ser substituída por '$'
// 'value' é em js e 'val' é em jquery

$('#btnSoma_jq').click(() => {
    let v1 = parseInt($('#v1').val())
    let v2 = parseInt($('#v2').val())
    let soma = v1 + v2
    $('#res').val(soma)
})

// 'parseInt()' seria necessário para o input type="text", mas deixamos type="number"
// é bom deixar o 'parseInt()' para evitar erros, mas podemos deixar assim:

// $('#btnSoma_jq').click(() => {
//     let v1 = $('#v1').val()
//     let v2 = $('#v2').val()
//     let soma = v1 + v2
//     $('#res').val(soma)
// })

