var titulo = document.getElementById("titulo");
var par = document.getElementsByClassName("parrafo");
var body = document.getElementById("cuerpo");

titulo.innerText = "UD3.1 DOCUMENT OBJECT MODEL";
par[0].innerText = "Esto es un Parrafo 1";
par[1].innerText = "Esto es un Parrafo 2";
par[2].innerText = "Esto es un Parrafo 3";


body.style.backgroundColor="#f4f4f4";
body.style.textAlign="center";
body.style.alignContent="center";

titulo.style.color="#333";
titulo.style.textTransform="uppercase";
titulo.style.marginBottom="15px";
titulo.style.fontWeight="bold";

for (var i = 0; i < par.length; i++) {
    par[i].style.fontSize = "18px";
    par[i].style.padding = "10px";
    par[i].style.width = "60%";
    par[i].style.borderLeft = "5px solid";
    par[i].style.borderRadius = "5px";
    par[i].style.lineHeight = "1.6";
    par[i].style.margin = "0 auto 15px";
}

par[0].style.color="#e74c3c";
par[0].style.backgroundColor="#ffe6e6";
par[0].style.borderColor ="#c0392b";

par[1].style.color="#2ecc71";
par[1].style.backgroundColor="#eaffea";
par[1].style.borderColor ="#27ea60";


par[2].style.color="#3498db";
par[2].style.backgroundColor="#e6f2ff";
par[2].style.borderColor ="#2980b9";

document.addEventListener("DOMContentLoaded", function(){ 
    document.getElementById("boton1").addEventListener("click", saludar); 
    document.getElementById("boton2").addEventListener("click", cambiarColor); 
    document.getElementById("boton3").addEventListener("click", cambiarpar); 
    } // fin de la función 
) // fin AddEventListener 

function saludar(){
    alert("Hola")
}

function cambiarColor(){
    var body = document.getElementById("cuerpo");
    body.style.backgroundColor="#000000";
}

function cambiarpar(){
    for(let a=0; a<par.length; a++){
        par[a].style.fontSize="38px";
        par[a].style.letterSpacing="8px";
        par[a].style.transform = "rotate(1deg)";
        par[a].style.fontWeight="bold";
    }
}

var foter= document.getElementById("footer");
foter.style.bottom="0";
foter.style.width="100%";
foter.style.position="absolute";
foter.style.alignContent="center";
foter.style.textAlign="center";
foter.style.backgroundColor="#000000";
foter.style.color="#ffffff";

var enlace= document.getElementById("enlace");
enlace.style.textDecoration="none";
enlace.style.color="#ffffff";