'use strict';

console.log('jdkjskjdksjkdjskjdskj');
const modalClose = document.getElementById('modalClose')
const cancelar = document.getElementById('cancelar')
const campo = document.getElementById('campo')
const modal = document.getElementById('modal')

const createRow = (client) => {
    const newRow = document.createElement('tr')

    console.log(client);

    const nome = document.createElement('td')
    nome.textContent = client.nome

    const email = document.createElement('td')
    email.textContent = client.email

    const celular = document.createElement('td')
    celular.textContent = client.celular

    const endereco = document.createElement('td')
    endereco.textContent = client.endereco

    const tdEditarExcluir = document.createElement('td')

    const btnEditar = document.createElement('button')
    btnEditar.classList.add('green', 'button')
    btnEditar.textContent = 'editar'

    const btnExcluir = document.createElement('button')
    btnExcluir.classList.add('red', 'button')
    btnExcluir.textContent = 'excluir'

    btnExcluir.addEventListener('click', function(){

        deletarContato(client.id)
    })

    btnEditar.addEventListener('click', function(){

        const salvarEdicao = document.getElementById('salvar')

        salvarEdicao.addEventListener('click', function(){
            console.log('oioioioiiooi');
        
        const nome = document.getElementById('nome').value
        const email = document.getElementById('email').value
        const celular = document.getElementById('celular').value
        const endereco = document.getElementById('endereco').value
    
        const ContatoJSON = {
            nome: nome,
            email: email,
            celular: celular,
            endereco: endereco
        }
    
        console.log(ContatoJSON);
    
        editarContato(ContatoJSON, client.id)

        window.location.reload()

        })
        aparecer()
    })

    newRow.replaceChildren(nome, email, celular, endereco, tdEditarExcluir)
    tdEditarExcluir.replaceChildren(btnEditar, btnExcluir)


    document.querySelector('#tableClient>tbody').appendChild(newRow)
}

const btncadastrar = document.getElementById('cadastrarCliente')

function aparecer(){

    modal.classList.remove('baixo')
    modal.classList.add('cima')

    campo.classList.remove('hidden')
    campo.classList.add('visivel')
}

function desaparecer(){

    modal.classList.remove('cima')
    modal.classList.add('baixo')

    campo.classList.remove('visivel')
    campo.classList.add('hidden')
}

btncadastrar.addEventListener('click', function(){
    console.log('uiiuii');

    const salvar = document.getElementById('salvar')

    salvar.addEventListener('click', function(){

        console.log('ssssssssssssssssssssssss');

        const nome = document.getElementById('nome').value
        const email = document.getElementById('email').value
        const celular = document.getElementById('celular').value
        const endereco = document.getElementById('endereco').value
    
        const novoContatoJSON = {
            nome: nome,
            email: email,
            celular: celular,
            endereco: endereco
        }
    
        console.log(novoContatoJSON);
    
        postarCliente(novoContatoJSON)
    
        desaparecer()
    
    window.location.reload()
    
    })
    

    aparecer()

})

modalClose.addEventListener('click', function(){

    desaparecer()
})

cancelar.addEventListener('click', function(){

    desaparecer()
})


async function pegarContatos() {
        const endpoint = 'http://localhost:8080/contatos';
        const api = await fetch(endpoint);
        const listApi = await api.json();
        console.log(listApi);
        return listApi;
    }

async function editarContato(editaContato, id){

        console.log('postando');

        console.log(editaContato);
        console.log(id);
        const endpoint = `http://localhost:8080/contatos/${id}`
    
        const options = {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(editaContato)
        };
    
        try {
            const response = await fetch(endpoint, options);
            return response.ok
        } catch (error) {
            
    }
}

async function postarCliente(novoCliente){

    console.log('enviando');
    const endpoint = 'http://localhost:8080/contatos'

    const options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(novoCliente)
    };

    try {
        const response = await fetch(endpoint, options);
        return response.ok
    } catch (error) {
        
    }
}

async function deletarContato(id){


    const endpoint = `http://localhost:8080/contatos/${id}`
try {
    const response = await fetch(endpoint, {
        method: 'DELETE'
    });

    if (response.ok) {
        console.log(`Filme com ID ${id} deletado com sucesso.`);
    } else {
        console.error(`Erro ao deletar filme com ID ${id}.`);
    }
} catch (error) {
    console.error('Ocorreu um erro durante a solicitação:', error);
}

window.location.reload()
}


async function verificarContatos() {

    let contatos = await pegarContatos()

    contatos.forEach(contato => {
        createRow(contato)
    });
}

verificarContatos()