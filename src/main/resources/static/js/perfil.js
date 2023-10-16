// script.js
function hashPassword(password) {
    // Supongamos que aquí utilizamos la función sha256 para calcular el hash
    const hashedPassword = sha256(password);
    return hashedPassword.substring(0, 8); // Tomamos los primeros 8 caracteres del hash
}

function maskPassword() {
    const passwordField = document.getElementById('passwordField');
    if (passwordField) {
        const password = passwordField.innerText;
        const maskedPassword = hashPassword(password);
        passwordField.innerText = '*'.repeat(8) + maskedPassword;
    }
}

maskPassword();




