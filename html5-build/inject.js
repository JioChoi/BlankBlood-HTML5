console.log("Code Injected");

let button = document.createElement("button");
button.innerText = "Fullscreen";

button.onclick = function() {
    // press f10
    let event = new KeyboardEvent("keydown", {
        key: "F10",
        code: "F10",
        keyCode: 121,
        which: 121,
        bubbles: true
    });
    window.dispatchEvent(event);
};

document.body.appendChild(button);