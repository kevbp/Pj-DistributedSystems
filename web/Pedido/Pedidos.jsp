<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("usuario") == null) {
        response.sendRedirect("../login.jsp");
        return;
    }
%><%-- 
    Document   : pedidoss
    Created on : 08/05/2025, 07:15 PM
    Author     : andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menú Pedido</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3; 
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #4a4a4a; 
            margin-top: 20px;
        }

        .content {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center; 
        }

        p {
            margin: 15px 0; 
        }

        a {
            text-decoration: none; 
            padding: 10px 20px;
            background-color: #3498db; 
            color: white;
            border-radius: 4px;
            transition: background-color 0.3s;
            display: inline-block; 
        }

        a:hover {
            background-color: #2980b9; 
        }

        .main-menu {
            margin-top: 20px; 
        }

        .main-menu a {
            background-color: #e74c3c; 
        }

        .main-menu a:hover {
            background-color: #c0392b; 
        }
    </style>
</head>
<body>
    <div class="content">
        <h1>Menú Pedido</h1>
        <p><a href="/ControlerPedido?Op=Listar">Listar Pedidos</a></p>
        <p><a href="/ControlerPedido?Op=Nuevo">Nuevo Pedido</a></p>

        <!-- Botón para volver al menú principal, separado y de otro color -->
        <div class="main-menu">
            <p><a href="../index.jsp">Volver al menú principal</a></p>
        </div>
    </div>
</body>
</html>