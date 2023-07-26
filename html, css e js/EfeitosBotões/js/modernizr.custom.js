window.Modernizr = function(a, b) {
    // Declaração das variáveis
    var e = {}, // Objeto que armazenará os recursos suportados
        g = b.documentElement, // Referência ao elemento raiz do documento (HTML)
        q = {}, // Objeto que armazenará os recursos a serem testados
        t = [], // Array que armazenará as classes CSS correspondentes aos recursos suportados
        x = {}.hasOwnProperty; // Referência ao método hasOwnProperty do objeto protótipo

    // Função autoexecutável
    !function() {
        // Verifica se a função hasOwnProperty está disponível
        if (!x.call(a, b)) {
            // Se não estiver disponível, define a função y para realizar a verificação
            y = function(a, b) {
                return x.call(a, b);
            };
        } else {
            y; // Caso contrário, não faz nada
        }

        // Define a função csstransforms3d para verificar se o recurso de transformação 3D CSS é suportado
        q.csstransforms3d = function() {
            return a;
        };

        // Itera sobre os recursos a serem testados
        for (var G in q) {
            if (y(q, G)) {
                var v = G.toLowerCase(); // Converte o nome do recurso para minúsculas
                e[v] = q[G](); // Armazena o resultado do teste no objeto de recursos suportados
                t.push((e[v] ? "" : "no-") + v); // Adiciona a classe CSS correspondente ao array t
            }
        }

        g.className = t.join(" "); // Define as classes CSS no atributo className do elemento raiz do documento
    }();
}(this, document);