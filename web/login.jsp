
<%-- 
    Document   : login
    Created on : 08/05/2025, 07:15 PM
    Author     : andrea
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
        </style>
    </head>
    <body>
        <div class="login-container">
            <h1>Inicio de Sesión</h1>
            <form action="ValidarLogin" method="post">   
                <div class="form-group">
                    <label for="txtUsuario">Usuario</label>
                    <input type="text" id="txtUsuario" name="txtUsuario" required>
                </div>
                <div class="form-group">
                    <label for="txtClave">Clave</label>
                    <input type="password" id="txtClave" name="txtClave" required>
                </div>
                <div class="form-group">
                    <input type="submit" name="validar" value="Aceptar">
                </div>
            </form>
        </div>
    </body>
</html>
