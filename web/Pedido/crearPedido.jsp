<%-- 
    Document   : crearPedido
    Created on : Jun 19, 2025, 4:29:03 PM
    Author     : broncake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear pedido</title>
    </head>
    <body>
            <form action="" method="POST">
                <table>
                    
                        <tr>
                            <td><label for="numPedido">Nro. Pedido:</label></td>
                            <td><input type="text" name="numPedido"></td>
                            <td></td>
                            <td></td>
                            <td><label for="fecPedido">Fecha:</label></td>
                            <td><input type="text" name="fecPedido"></td>
                        </tr>
                        <tr>
                            <td><label for="codCliente">Cod. Cliente:</label></td>
                            <td><input type="text" name="codCliente"></td>
                            <td><label for="nomCliente">Cliente:</label></td>
                            <td><input type="text" name="nomCliente"></td>
                            <td><label for="tipoDocCliente">DNI/RUC:</label></td>
                            <td><input type="text" name="tipoDocuCLiente"></td>
                        </tr>
 
                </table>

            </form>
    </body>
</html>
