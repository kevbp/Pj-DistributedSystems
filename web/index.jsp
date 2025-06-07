<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- 
    Document   : index
    Created on : 08/05/2025, 07:15 PM
    Author     : yakelin
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="styles\styles.css">
        <title>Menú Principal</title>
    </head>
    
    <body class="text-center">
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