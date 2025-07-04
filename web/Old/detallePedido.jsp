<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${sessionScope.usuAut == null}">
    <c:redirect url="../login.jsp" />
</c:if>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>Detalle de Pedido</title>
    </head>
    <body>
        <div class="login-container">
            <h1>Detalle del Pedido</h1>

            <c:set var="rp" value="${sessionScope.resuPedido}"/>
            <c:set var="p" value="${rp.pedido}"/>
            <c:set var="c" value="${rp.cliente}"/>

            <table>
                <tr>
                    <td>Nro. Pedido: </td>
                    <td><input type="text" name="numPed" value="${p.numPedido}" required readonly></td>
                    <td>fecha: </td>
                    <td><input type="date" name="fec" value="${p.fec}" readonly required></td>
                </tr>
                <tr>
                    <td>Cod. Cliente: </td>
                    <td><input type="text" size="8" name="codCli" value="${c.codCliente}" required readonly></td>
                    <td>Nombre del cliente: </td>
                    <td><input type="text" size="20" name="nomCli" value="${c.nom}" readonly></td>
                    <td>DNI/RUC: </td>
                    <td><input type="text" size="10" name="dni" value="${c.dni}" readonly></td>
                </tr>
                <tr>
                    <td>Dirección: </td>
                    <td><input type="text" size="20" name="dir" value="${c.dir}" readonly></td>
                    <td>Celular: </td>
                    <td><input type="text" size="10" name="cel" value="${c.cel}" readonly></td>
                </tr>
            </table>
            <br>
            <h3>Detalles del pedido</h3>
            <br>
            <table>
                <tr>
                    <td align="center">Codigo</td>
                    <td align="center">Nombre</td>
                    <td align="center">Descripción</td>
                    <td align="center">Precio</td>
                    <td align="center">Cantidad</td>
                    <td align="center">Sub Total</td>
                    <td align="center">IGV</td>
                    <td align="center">Total</td>
                </tr>
                <c:forEach var="lin" items="${rp.detPedido}">
                    <tr>
                        <td><input type="text" name="cod" size="5" value="${lin[0]}" readonly/></td>
                        <td><input type="text" size="15" value="${lin[1]}" readonly/></td>
                        <td><input type="text" size="20" value="${lin[2]}" readonly/></td>
                        <td><input type="text" size="5" value="${lin[3]}" readonly/></td>
                        <td><input type="text" size="5" value="${lin[4]}" readonly/></td>
                        <td><input type="text" size="5" value="${lin[5]}" readonly/></td>
                        <td><input type="text" size="5" value="${lin[6]}" readonly/></td>
                        <td><input type="text" size="5" value="${lin[7]}" readonly/></td>
                    <tr>
                    </c:forEach>
                    <td colspan="8" align="right">Sub Total: <input type="text" size="5" value="${rp.subTotal}" readonly/></td> 
                </tr>
                <tr>
                    <td colspan="8" align="right">IGV 18%: <input type="text" size="5" value="${rp.igv}" readonly/></td> 
                </tr>
                <tr>
                    <td colspan="8" align="right">Total: <input type="text" size="5" value="${rp.total}" readonly/></td> 
                </tr>
            </table>
        </div>

        <br>
        <div>
            <c:url var="urlSalir" value="/ControlPedido"><c:param name="op" value="ListarPedidos" /></c:url>
            <a class="btn btn-danger py-0" href="${urlSalir}">Regresar al listado de pedidos</a>
        </div>

    </body>
</html>
