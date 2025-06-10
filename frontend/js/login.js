var navBtnLogin = document.getElementById("loginBtn");
var navBtnRegistrar = document.getElementById("registrarBtn");
var formLogin = document.getElementById("login");
var formRegistrar = document.getElementById("registrar");

function login(){
    formLogin.style.left = "4px";
    formRegistrar.style.right = "-520px";
    navBtnLogin.className += " white-btn";
    navBtnRegistrar.classList = "btn";
    formLogin.style.opacity = 1;
    formRegistrar.style.opacity = 0;
}

function registrar(){
    formLogin.style.left = "-520px";
    formRegistrar.style.right = "5px";
    navBtnRegistrar.className += " white-btn";
    navBtnLogin.classList = "btn";
    formLogin.style.opacity = 0;
    formRegistrar.style.opacity = 1;
}

function myMenuFunction(){
    var i = document.getElementById("navMenu");
    if(i.className == "nav-menu"){
        i.className += " responsive";
    }
    else{
i.className = "nav-menu";
    }
}
