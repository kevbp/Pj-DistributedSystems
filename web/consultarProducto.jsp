<%-- 
    Document   : consultarProducto
    Created on : 13 may. 2025, 10:06:03
    Author     : QUINECHE
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%
    List<producto> Lista = (List<producto>) request.getAttribute("Lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Consultar Producto</title>
    </head>
    <style>
        body {
            background-color: #f5f5f5;
            color: #333;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #3498db;
            margin-bottom: 20px;
        }
        p {
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin: 5px 0;
            width: 300px;
        }
        a {
            margin-top: 20px;
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
    <body>
        <h1>Consulta de Productos</h1>
        <table border="1">
              
            <c:forEach var="campo" items="${Lista}">
                <tr>
                    <td>Id Producto</td>
                    <td>${campo.getId_Producto()}</td>
                </tr>
                <tr>
                    <td>Descripción</td>
                    <td>${campo.getDescripcion()}</td>
                </tr>    
                <tr>
                    <td>Costo</td>
                    <td>${campo.getCosto()}</td>
                </tr>       
                <tr>
                    <td>Precio</td>
                    <td>${campo.getPrecio()}</td>
                </tr>  
                <tr>
                    <td>Cantidad</td>
                    <td>${campo.getCantidad()}</td>
                </tr>                
            </c:forEach>
        </table>
    </body>
</html>