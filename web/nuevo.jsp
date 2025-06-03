<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : nuevo
    Created on : 08/05/2025, 07:15 PM
    Author     : andrea
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${pageContext.servletContext.contextPath}/form.css" rel="stylesheet">
        
    </head>
    <body>
        <h1>Inserta Clientes</h1>
        <div class="container">
            <form action="ControlerCliente" method="post">   
                <table>
                    <tr>
                        <td><label for="apellidos">ID Cliente</label></td>
                        <td><input type="hidden" name="Id"></td>
                    </tr>
                    <tr>
                        <td><label for="apellidos">Apellidos</label></td>
                        <td><input type="text" name="apellidos" id="apellidos"></td>
                    </tr>
                    <tr>
                        <td><label for="nombres">Nombres</label></td>
                        <td><input type="text" name="nombres" id="nombres"></td>
                    </tr>     
                    <tr>
                        <td><label for="dni">DNI</label></td>
                        <td><input type="text" name="DNI" id="dni"></td>
                    </tr>        
                    <tr>
                        <td><label for="direccion">Dirección</label></td>
                        <td><input type="text" name="direccion" id="direccion"></td>
                    </tr>  
                    <tr>
                        <td><label for="telefono">Teléfono</label></td>
                        <td><input type="text" name="telefono" id="telefono"></td>
                    </tr>                 
                    <tr>
                        <td><label for="movil">Móvil</label></td>
                        <td><input type="text" name="movil" id="movil"></td>
                    </tr>                 
                </table>
                </div>
                <div class="button-container">
                    <input type="submit" name="modificar" value="Grabar"> 
                    <button type="button" class="cancel-button" onclick="window.location.href='index.jsp'">Cancelar</button>
                </div>
            </form>
    </body>
</html>





