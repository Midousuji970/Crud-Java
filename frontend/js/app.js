// document.getElementById("btnGet").addEventListener("click",function(){
// fetch("http://localhost:3000/hello")
// .then(response => response.text())
// .then(data => {
//     document.getElementById("resultado").textContent = data;
// })
// .catch(error =>{
//     document.getElementById("resultado").textContent = "Erro" + error;
// });
// });

document.getElementById("btnGet").addEventListener("click", function(){
    const nome = document.getElementById("getName").value;
    const id = document.getElementById("getId").value;

    const dados = {
        name: nome,
        email: `usuario${id}@teste.com`
    };
    fetch(`http://localhost:3000/hello/${id}`,{
        method: "POST",
        headers:{
            "Content-Type": "application/json"
        },
        body: JSON.stringify(dados)
    })
    .then(response => response.text())
    .then(data =>{
        document.getElementById("resultado").textContent = data;
    })
     .catch(error => {
        document.getElementById("resultado").textContent = "Erro:" + error;
     });   

});