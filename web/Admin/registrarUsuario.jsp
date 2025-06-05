<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%-- 
    Document   : registrarCliente
    Created on : 29 may. 2025, 18:55:34
    Author     : Usuario local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesión</title>
        <link rel="stylesheet" href="styles.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f2f5;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .login-container {
                background-color: #ffffff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                width: 350px;
                text-align: center;
            }
            .login-container h1 {
                color: #333;
                margin-bottom: 20px;
            }
            .form-group {
                margin-bottom: 15px;
            }
            .form-group label {
                display: block;
                text-align: left;
                font-weight: bold;
                margin-bottom: 5px;
            }
            .form-group input[type="text"],
            .form-group input[type="password"] {
                width: calc(100% - 20px);
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            .form-group input[type="submit"] {
                background-color: #007bff;
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .form-group input[type="submit"]:hover {
                background-color: #0056b3;
            }
            .form-group select{
                padding: 10px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s;
                text-align: left;
                align-items: left;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <h1>Registrar nuevo Usuario</h1>
            <form action="Registrar" method="post">   
                <div class="form-group">
                    <label for="txtUsuario">Username</label>
                    <input type="text" id="txtUsuario" name="txtUsuario" required>
                </div>
                <div class="form-group">
                    <label for="txtNombre">Nombre completo</label>
                    <input type="text" id="txtNombre" name="txtNombre" required>
                </div>
                <div class="form-group">
                    <label for="txtClave">Clave</label>
                    <input type="password" id="txtClave" name="txtClave" required>
                </div>
                <div class="form-group">
                    <label for="txtPerfil">Perfil</label>
                    <select id="txtPerfil" name="txtPerfil">
                        <option value="Empleado" selected>Empleado</option>
                        <option value="Administrador">Administrador</option>
                    </select>
                </div>
                <div class="form-group pt-8">
                    <button type="submit" class="btn btn-primary" name="btnRegistrar">Crear cuenta</button>
                </div>
            </form>
        </div>
         </body>
</html>
