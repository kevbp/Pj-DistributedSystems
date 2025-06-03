<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%@page import="java.util.List"%>
<%@page import="Entidades.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : modificar
    Created on : 08/05/2025, 07:15 PM
    Author     : andrea
--%>
<%
    List<producto> Lista = (List<producto>) request.getAttribute("Lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Productos</title>
        <style>
            body {
                background-color: #f0f8ff;
                color: #003366;
                font-family: Arial, sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            h1 {
                text-align: center;
                color: #3498db;
                margin-bottom: 25px;
                font-size: 25px;
            }
            .container {
                width: 400px;
                background-color: #f8f8f8; 
                border-radius: 10px;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); 
                padding: 20px;
                text-align: left; 
            }
            label {
                display: block;
                margin: 8px 0 4px; 
                font-weight: bold; 
                color: #2980b9; 
                font-size: 12px; 
            }
            input[type="text"] {
                width: calc(100% - 12px);
                padding: 8px; 
                border: 1px solid #003366;
                border-radius: 5px;
                margin-bottom: 12px; 
                font-size: 14px; 
            }
            input[type="submit"] {
                background-color: #2980b9;
                color: white;
                padding: 8px 12px; 
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 14px; 
                transition: background-color 0.3s;
            }
            input[type="submit"]:hover {
                background-color: #00509e;
            }
            .cancel-button {
                background-color: red; 
                color: white;
                padding: 8px 12px; 
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 14px; 
                transition: background-color 0.3s;
                margin-left: 10px; 
            }
            .cancel-button:hover {
                background-color: darkred; 
            }
            .button-container {
                display: flex;
                justify-content: center;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
            <h1>Modifica Productos</h1>
            <form action="ControlerProducto" method="post">  
                <table border="1">
                <c:forEach var="campo" items="${Lista}">
                    <tr>
                        <td>Id Producto</td>
                        <td>${campo.id}</td>
                        <input type="hidden" name="Id" value="${campo.id}">
                    </tr>
                    <tr>
                        <td>Descripcion</td>
                        <td><input type="text" name="descripcion" value="${campo.descripcion}"></td>
                    </tr>
                    <tr>
                        <td>Costo</td>
                        <td><input type="text" name="costo" value="${campo.costo}"></td>
                    </tr>     
                    <tr>
                        <td>Precio</td>
                        <td><input type="text" name="precio" value="${campo.precio}"></td>
                    </tr>        
                    <tr>
                        <td>Cantidad</td>
                        <td><input type="text" name="cantidad" value="${campo.cantidad}"></td>
                    </tr>                
                </c:forEach>
            </table>
            <input type="submit" name="modificar" value="Modificar"> 
        </form>
    </body>
</html>