const hourHand = document.querySelector(".hour-hand");
const minuteHand = document.querySelector(".minute-hand");
const secondHand = document.querySelector(".second-hand");
const startButton = document.getElementById("start-btn");
const splitButton = document.getElementById("split-btn");
const resetButton = document.getElementById("reset-btn");
const hoursSpan = document.getElementById("hours");
const minutesSpan = document.getElementById("minutes");
const secondsSpan = document.getElementById("seconds");
const millisecondsSpan = document.getElementById("milliseconds");

let intervalId;
let startTime;
let elapsedTime = 0;
let isRunning = false;

function updateClock() {
    const currentTime = Date.now();
    const deltaTime = currentTime - startTime + elapsedTime;
    const time = new Date(deltaTime);

    const hours = String(time.getUTCHours()).padStart(2, "0");
    const minutes = String(time.getUTCMinutes()).padStart(2, "0");
    const seconds = String(time.getUTCSeconds()).padStart(2, "0");
    const milliseconds = String(Math.floor(time.getUTCMilliseconds() / 10)).padStart(2, "0");

    hoursSpan.textContent = hours;
    minutesSpan.textContent = minutes;
    secondsSpan.textContent = seconds;
    millisecondsSpan.textContent = milliseconds;

    hourHand.style.transform = `rotate(${time.getUTCHours() * 30 + time.getUTCMinutes() / 2}deg)`;
    minuteHand.style.transform = `rotate(${time.getUTCMinutes() * 6}deg)`;
    secondHand.style.transform = `rotate(${time.getUTCSeconds() * 6}deg)`;
}

function startClock() {
    if (!isRunning) {
        startTime = Date.now() - elapsedTime;
        intervalId = setInterval(updateClock, 10);
        isRunning = true;
    }
}

function splitClock() {
    if (isRunning) {
        clearInterval(intervalId);
        elapsedTime = Date.now() - startTime;
        isRunning = false;
    }
}

function resetClock() {
    splitClock();
    elapsedTime = 0;
    hoursSpan.textContent = "00";
    minutesSpan.textContent = "00";
    secondsSpan.textContent = "00";
    millisecondsSpan.textContent = "00";
    hourHand.style.transform = "rotate(0deg)";
    minuteHand.style.transform = "rotate(0deg)";
    secondHand.style.transform = "rotate(0deg)";
    clearTimes();
}

function clearTimes() {
    while (timesList.firstChild) {
        timesList.removeChild(timesList.firstChild);
    }
}

startButton.addEventListener("click", startClock);
splitButton.addEventListener("click", splitClock);
resetButton.addEventListener("click", resetClock);

const saveButton = document.getElementById("save-btn");
const timesList = document.getElementById("times-list");

saveButton.addEventListener("click", saveTime);

function saveTime() {
    const currentTime = `${hoursSpan.textContent}:${minutesSpan.textContent}:${secondsSpan.textContent}:${millisecondsSpan.textContent}`;
    const listItem = document.createElement("li");
    listItem.textContent = currentTime;
    timesList.appendChild(listItem);
}