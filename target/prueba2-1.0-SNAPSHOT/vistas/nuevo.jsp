<%-- 
    Document   : nuevo
    Created on : 6 dic 2022, 12:55:20
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Añadir Socio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
        <link href="vistas/css/style.css" rel="stylesheet">
    </head>
    <body>
        <header id="main-header" class="py-2 bg-info text-white">
            <h1 class="text-center"><i class="fa-sharp fa-solid fa-dumbbell"></i> Añadir Socio <i class="fa-sharp fa-solid fa-dumbbell"></i></h1>
        </header>
        
        <div class="container" >
                <div class="row" >
                    <form class="p-3" method="POST" action="SociosController?accion=insert">
                        <div class="mb-2">
                            <div class="MWUDs">
                                <div class="context">
                                    <label for="nombre" class="form-label" >Nombre </label>
                                    <i class="required">*</i>
                                </div>
                                <span class="text-required">*Required</span>
                            </div>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                            <div class="error">
                                <span id="nombreError"></span>
                            </div>
                        </div> 
                        <div class="mb-2">
                            <label for="apellido" class="form-label" >Apellido </label>
                            <i class="required">*</i>
                            <input type="text" class="form-control" id="apellido" name="apellido" required>
                            <div class="error">
                                <span id="apellidoError"></span>
                             </div>
                        </div> 
                         <div class="mb-2">
                            <label for="direccion" class="form-label" >Direccion </label>
                            <i class="required">*</i>
                            <input type="text" class="form-control" id="direccion" name="direccion" required>
                            <div class="error">
                                <span id="direccionError"></span>
                            </div>
                        </div> 
                         <div class="mb-2">
                            <label for="localidad" class="form-label" >Localidad </label>
                            <i class="required">*</i>
                            <input type="text" class="form-control" id="localidad" name="localidad" required>
                            <div class="error">
                                <span id="localidadError"></span>
                            </div>
                        </div> 
                          <div class="mb-2">
                            <label for="fnac" class="form-label" >Fecha de Nacimiento </label>
                            <i class="required">*</i>
                            <input type="date" class="form-control" id="fnac" name="fnac" required>
                            <div class="error">
                                <span id="fnacError"></span>
                            </div>
                        </div> 
                        <div class="mb-2">
                            <label for="mail" class="form-label" >Email </label>
                            <i class="required">*</i>
                            <input type="text" class="form-control" id="email" name="email" required>
                            <div class="error">
                                <span id="emailError"></span>
                            </div>
                        </div>  
                        <div class="mb-2">
                            <label for="telefono" class="form-label" >Telefono </label>
                            <i class="required">*</i>
                            <input type="text" class="form-control" id="telefono" name="telefono" required>
                            <div class="error">
                                <span id="telefonoError"></span>
                            </div>
                        </div> 
                        <a href="SociosController?accion=volver">
                            <button type="button" class="btn btn-secondary mt-3" id="volver">Volver</button>
                        </a>                     
                        <button type="submit" class="btn btn-primary ms-3 mt-3" id="anadir">Añadir</button>

                    </form>                
                </div>

        </div>
        <script src="vistas/js/validar.js"></script> 
    </body>
</html>