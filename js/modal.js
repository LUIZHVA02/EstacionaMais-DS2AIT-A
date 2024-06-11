var buttonModal = document.getElementById("abrirModal"); // Corrigido para usar o ID correto
var modal = document.getElementById("minhaModal"); // Corrigido para usar o ID correto
var fecharModal = document.getElementsByClassName("fechar")[0];

buttonModal.addEventListener('click', function(){
    modal.style.display = 'block';
});

fecharModal.addEventListener('click', function(){
    modal.style.display = 'none';
});

window.addEventListener('click', function(event){
    if(event.target == modal) {
        modal.style.display = 'none';
    }
});