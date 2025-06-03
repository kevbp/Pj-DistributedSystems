<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%-- 
    Document   : clientes
    Created on : 08/05/2025, 07:15 PM
    Author     : yakelin
--%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
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

        .content {
            margin: 20px;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center; 
        }

        a {
            display: inline-block;
            margin: 10px 0;
            padding: 10px 20px;
            color: white;
            background-color: #3498db; 
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #2980b9;  
        }

        .back-button {
            margin-top: 20px; 
            padding: 10px 20px;
            color: white;
            background-color: #e74c3c; 
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
            display: inline-block; 
        }

        .back-button:hover {
            background-color: #c0392b; 
        }
    </style>
</head>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<body>
    <h1>Menú de Clientes</h1>
    <div class="content">
        <p><a href="ControlerCliente?Op=Listar">Listar Clientes</a></p>
        <p><a href="ControlerCliente?Op=Nuevo">Nuevo Cliente</a></p>
    </div>
    <div style="text-align: center;">
        <a class="back-button" href="index.jsp">Volver al menú principal</a>
    </div>
</body>
</html>