/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let nombre=document.getElementById("nombre");
let apellido=document.getElementById("apellido");
let direccion=document.getElementById("direccion");
let localidad=document.getElementById("localidad");
let fnac=document.getElementById("fnac");
let email=document.getElementById("email");
let telefono=document.getElementById("telefono");
let anadir=document.getElementById("anadir");
let modificar=document.getElementById("modificar");



anadir.addEventListener("click", validar);
modificar.addEventListener("click", validar);

function validar(){
    let todoCorrecto= true;

    if(nombre.value.length <2 ){
        nombre.classList.add("is-invalid");
        document.getElementById('nombreError').innerHTML="Ingrese su nombre";
        todoCorrecto=false;
    }
    else{
        nombre.classList.remove("is-invalid");
        document.getElementById('nombreError').innerHTML="";
    }

    if(apellido.value.length <2){
        apellido.classList.add("is-invalid");
        document.getElementById('apellidoError').innerHTML="Ingrese su apellido";
        todoCorrecto=false;
    }
    else{
        apellido.classList.remove("is-invalid");
        document.getElementById('apellidoError').innerHTML="";
    }
    
    if(direccion.value.length <2){
        direccion.classList.add("is-invalid");
        document.getElementById('direccionError').innerHTML="Ingrese su direccion";
        todoCorrecto=false;
    }
    else{
        direccion.classList.remove("is-invalid");
        document.getElementById('direccionError').innerHTML="";
    }
    
    if(localidad.value.length <2){
        localidad.classList.add("is-invalid");
        document.getElementById('localidadError').innerHTML="Ingrese su localidad";
        todoCorrecto=false;
    }
    else{
        localidad.classList.remove("is-invalid");
        document.getElementById('localidadError').innerHTML="";
    }
    
    
    if(fnac.value.length <2){
        fnac.classList.add("is-invalid");
        document.getElementById('fnacError').innerHTML="Ingrese su Fecha de Nacimiento";
        todoCorrecto=false;
    }
    else{
        fnac.classList.remove("is-invalid");
        document.getElementById('fnacError').innerHTML="";
    }

    
    if (!/^(([^<>()\[\]\.,;:\s@\”]+(\.[^<>()\[\]\.,;:\s@\”]+)*)|(\”.+\”))@(([^<>()[\]\.,;:\s@\”]+\.)+[^<>()[\]\.,;:\s@\”]{2,})$/.test(email.value)){
        email.classList.add("is-invalid");
        document.getElementById('emailError').innerHTML="Ingrese su correo";
        todoCorrecto=false;
    } 
    else {
        email.classList.remove("is-invalid");
        document.getElementById('emailError').innerHTML="";
    }

    if((telefono.value <=0 || isNaN(telefono.value))){
        telefono.classList.add("is-invalid");
        document.getElementById('telefonoError').innerHTML="Ingrese su telefono";
        todoCorrecto=false;
    }
    else{
        telefono.classList.remove("is-invalid");
        document.getElementById('telefonoError').innerHTML="";
    }

    return todoCorrecto;
};

