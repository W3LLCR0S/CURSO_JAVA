document.addEventListener("DOMContentLoaded", function () {
  const redLight1 = document.querySelector(".semaforo1 .vermelho");
  const yellowLight1 = document.querySelector(".semaforo1 .amarelo");
  const greenLight1 = document.querySelector(".semaforo1 .verde");

  const redLight2 = document.querySelector(".semaforo2 .vermelho");
  const yellowLight2 = document.querySelector(".semaforo2 .amarelo");
  const greenLight2 = document.querySelector(".semaforo2 .verde");

  const carro1 = document.querySelector('.carro1');
  const carro2 = document.querySelector('.carro2');
  const container = document.querySelector('.container');

  function startSemaphore() {
    setTimeout(() => {
      redLight1.style.opacity = 1;
      yellowLight1.style.opacity = 0.3;
      greenLight1.style.opacity = 0.3;

      redLight2.style.opacity = 1;
      yellowLight2.style.opacity = 0.3;
      greenLight2.style.opacity = 0.3;

      setTimeout(() => {
        redLight1.style.opacity = 0.3;
        yellowLight1.style.opacity = 1;
        setTimeout(() => {
          yellowLight1.style.opacity = 0.3;
          greenLight1.style.opacity = 1;
          carro1.classList.add('moveDown');
          setTimeout(() => {
            carro1.style.display = 'none';
            alternarSemaforo1();
          }, 2000);
        }, 2000);
      }, 4000);
    }, 4000);
  }

  function alternarSemaforo1() {
    redLight1.style.opacity = 1;
    yellowLight1.style.opacity = 0.3;
    greenLight1.style.opacity = 0.3;

    setTimeout(() => {
      redLight1.style.opacity = 0.3;
      yellowLight1.style.opacity = 1;
      setTimeout(() => {
        yellowLight1.style.opacity = 0.3;
        greenLight1.style.opacity = 1;
        carro1.style.display = 'block';
        carro1.classList.remove('moveDown');
        startSemaphore();
      }, 2000);
    }, 4000);
  }

  function alternarSemaforo2() {
    redLight2.style.opacity = 1;
    yellowLight2.style.opacity = 0.3;
    greenLight2.style.opacity = 0.3;

    setTimeout(() => {
      redLight2.style.opacity = 0.3;
      yellowLight2.style.opacity = 1;
      setTimeout(() => {
        yellowLight2.style.opacity = 0.3;
        greenLight2.style.opacity = 1;
        carro2.style.display = 'block';
        carro2.classList.remove('moveLeft');
        container.classList.add('moveCarro2');
        setTimeout(() => {
          carro2.style.display = 'none';
          container.classList.remove('moveCarro2');
          setTimeout(() => {
            carro2.style.display = 'block';
            alternarSemaforo2();
            carro1.style.display = 'block'; // Exibe o carro 1 novamente
            carro1.classList.remove('moveDown'); // Remove a classe de animação para reiniciar o movimento
          }, 4000); // Intervalo de 4 segundos para o vermelho do semáforo 2
        }, 4000); // Intervalo de 4 segundos para o vermelho do semáforo 2
      }, 2000); // Intervalo de 2 segundos para o amarelo do semáforo 2
    }, 6000); // Intervalo de 6 segundos para o verde do semáforo 2
  }

  startSemaphore();
  alternarSemaforo2();
});
