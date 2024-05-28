
function validarPrimeiroDigito(cpf){
    let somaDeNumeros = 0;
    for (let i = 0; i < 9; i++){
        somaDeNumeros += cpf[i] * (10 - i);
    }
    const resto = (somaDeNumeros * 10) % 11;
    if(resto < 10) {
        return cpf[9] == resto
    }
        return cpf[9] == 0
}

function validarSegundoDigito(cpf){
    let somaDeNumeros = 0;
    for (let i = 0; i < 10; i++){
        somaDeNumeros += cpf[i] * (11 - i);
    }
    const resto = (somaDeNumeros * 10) % 11;
    if(resto < 10) {
        return cpf[10] == resto
    }
        return cpf[10] == 0
}

/*FUNÇÃO DE VALIDAR NUMERO REPETIDO DANDO ERRO*/
// function validarNumeroRepetido(cpf){
//     const primeiro = cpf[0];
//     let diferente = false
//     for(let i = 1; i < cpf.lenght; i++) {
//         if([i] != primeiro){
//             diferente = true
//         }
//     }
//     return diferente
// }

function validarCpf(cpf){
    if(!(cpf.lenght != 11)){
        return false
    } 
    // if(!validarNumeroRepetido(cpf)){
    //     return false
    // }
    if(!validarPrimeiroDigito(cpf)) {
        return false
    }
    if(!validarSegundoDigito(cpf)) {
        return false
    }
    return true
}
document.addEventListener('DOMContentLoaded', function() {
    const cpfInputElement = document.getElementById('cpf');
    const resultadoElement = document.getElementById('resultado');

    if (!cpfInputElement || !resultadoElement) {
        console.error('Elementos não encontrados no DOM.');
        return;
    }

    cpfInputElement.addEventListener('input', function() {
        const cpfInput = this.value;

        if (cpfInput.length === 11 && !isNaN(cpfInput)) {
            const cpf = cpfInput.split('').map(Number);
            const cpfValido = validarCpf(cpf);

            if (cpfValido) {
                resultadoElement.innerText = 'CPF válido!';
                this.classList.remove('invalid');
                this.classList.add('valid');
            } else {
                resultadoElement.innerText = 'CPF inválido! - Digite-o Corretamente';
                this.classList.remove('valid');
                this.classList.add('invalid');
            }
        } else {
            resultadoElement.innerText = '';
            this.classList.remove('valid');
            this.classList.remove('invalid');
        }
    });
});

const cpf = '00000000000'.split('').map((e) => parseInt(e));
const cpfValido = validarCpf(cpf);
console.log(cpfValido);