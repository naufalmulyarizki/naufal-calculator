let expression = "";
document.body.style.display = "none"; // Tambahkan ini di paling atas script.js

window.addEventListener("message", function (event) {
    if (event.data.type === "openCalculator") {
        document.body.style.display = "flex";
    }
});

function press(val) {
    expression += val;
    document.getElementById("display").value = expression;
}

function clearDisplay() {
    expression = "";
    document.getElementById("display").value = "";
}

function calculate() {
    fetch(`https://${GetParentResourceName()}/calculate`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ expression })
    })
    .then(res => res.json())
    .then(data => {
        expression = data.result.toString();
        document.getElementById("display").value = expression;
    });
}

function closeCalculator() {
    document.body.style.display = "none";
    fetch(`https://${GetParentResourceName()}/closeCalculator`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: "{}"
    });
}