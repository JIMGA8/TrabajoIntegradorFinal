<%-- 
    Document   : socios
    Created on : 13 dic. 2022, 19:25:48
    Author     : GOIAR
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Socios</title>
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
            <h1 class="text-center"><i class="fa-sharp fa-solid fa-dumbbell"></i> Listado de Socios del Gym <i class="fa-sharp fa-solid fa-dumbbell"></i></h1>
        </header>
        <div class="container">
            <div class="row">
                <div class="box"> 
                   <a class="btn btn-primary col-2 m-3" href="SociosController?accion=nuevo">
                       <i class="fa-solid fa-person-circle-plus"></i>
                       Agregar Socio
                   </a>
                    <div class="col-3 m-3 card bg-success text-white text-center">
                        <h4> Total de Socios: 
                            ${totalClientes} <i class="fas fa-users"></i>
                        </h4>
                    </div> 
                </div>
                
                <table class="table table-striped table-hover" id="tabla">
                    <thead class="table-primary" >
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Direccion</th>
                        <th>Localidad</th>
                        <th>Fecha Nac</th>
                        <th>Email</th>
                        <th>Telefono</th>
                        <th>Eliminar</th>
                        <th>Modificar</th>
                    </thead>
                    <%
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                                for(int i=0;i<resultado.size();i++)
				{
				String ruta="SociosController?accion=modificar&id="+resultado.get(i).getId();	
				String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getId();
				%>                
                    
                
                    <tr>
                        <td><%=resultado.get(i).getId()%></td>
                        <td><%=resultado.get(i).getNombre()%></td>
                        <td><%=resultado.get(i).getApellido()%></td>
                        <td><%=resultado.get(i).getDireccion()%></td>
                        <td><%=resultado.get(i).getLocalidad()%></td>
                        <td><%=resultado.get(i).getFnac()%></td>
                        <td><%=resultado.get(i).getEmail()%></td>
                        <td><%=resultado.get(i).getTelefono()%></td>
                        <td class="text-center"><a data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="secondary"><i class="fa-solid fa-trash"></i></a></td>
			<td class="text-center"><a href=<%=ruta%>><i class="fa-solid fa-pen-to-square"></i></a></td>
                    </tr>
                    
                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                       <div class="modal-dialog">
                           <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">¿Deseas Eliminar al socio? <%=resultado.get(i).getNombre()%> </h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                    <a href=<%=rutaE%>><button type="button" class="btn btn-primary">Eliminar</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                                          
                </table>
  
            </div>
        </div>
        <footer id="pie-pagina" class="bg-warning text-white mt-2 p-2">
            <div class="container">
                <div class="col">
                    <p class="lead text-center m-0 p-0">
                        <img src="vistas/img/codoacodo.png" height="70px" alt="CodoACodo">
                            GYM CODO A CODO
                        <img src="vistas/img/codoacodo.png" height="70px" alt="CodoACodo">
                    </p>
                </div>
            </div>
        </footer>  
    </body>
</html>
