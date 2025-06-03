<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%-- 
    Document   : index
    Created on : 08/05/2025, 07:15 PM
    Author     : yakelin
--%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menú Principal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eef2f3; 
        }

        h1 {
            text-align: center;
            color: #4a4a4a; 
        }

        .navbar {
            background-color: #3498db; 
            overflow: hidden;
            text-align: center;
        }

        .navbar a {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            margin: 0 10px;
            border-radius: 4px;
        }

        .navbar a:hover {
            background-color: #2980b9; 
            color: #f0f0f0; 
        }

        .content {
            margin: 20px;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .logout {
            background-color: #e74c3c; 
            text-align: center;
            padding: 10px;
            margin: 20px auto;
            border-radius: 5px;
            width: 200px; 
        }

        .logout a {
            color: white; 
            font-weight: bold;
            text-decoration: none;
            display: block; 
        }

        .logout a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%  
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
        if (session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
        }
    %>

    <h1>Menú Principal</h1>
    <div class="navbar">
        <a href="registrarUsuario.jsp">Gestión de Usuarios</a>
        <a href="Clientes.jsp">Clientes</a>
        <a href="Productos.jsp">Producto</a>
        <a href="Pedidos.jsp">Pedidos</a>
    </div>
    
    <div class="content">
        <p>Bienvenido al sistema de gestión. Selecciona una opción del menú para continuar.</p>
        
       
        <div class="logout">
            <a href="CerrarSesion">Cerrar Sesión</a>
        </div>
    </div>
</body>
</html>