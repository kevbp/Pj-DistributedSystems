<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%-- 
    Document   : consultar
    Created on : 08/05/2025, 07:15 PM
    Author     : yakelin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<cliente> Lista= (List<cliente>) request.getAttribute("Lista");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Consultar Cliente</title>
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
<% 
    cliente client = (cliente) Lista.get(0);
    if (client != null) {
%>
        <h1>Información del Cliente</h1>
        <p>ID: <%= client.getId() %></p>
        <p>Apellidos: <%= client.getApellidos() %></p>
        <p>Nombres: <%= client.getNombres() %></p>
        <p>DNI: <%= client.getDni() %></p>
        <p>Dirección: <%= client.getDireccion() %></p>
        <p>Teléfono: <%= client.getTelefono() %></p>
        <p>Móvil: <%= client.getMovil() %></p>
<% 
    } else { 
%>
        <p>No se encontró el cliente.</p>
<% 
    } 
%>
    <a href="Cliente/Clientes.jsp">Volver a la lista de clientes</a>
</body>
</html>