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
        <title>Listado de pedidos</title>
    </head>
    <body>
        <h1>Lista de pedidos</h1>
        <p>
            <c:if test="${param.msg == '2'}">
                El pedido se eliminó satisfactoriamente.
            </c:if>
        <p>
            <c:if test="${not empty sessionScope.lisPedidos}">
            <table>
                <tr>
                    <td align="center">N° Pedido</td>
                    <td align="center">ID Cliente</td>
                    <td align="center">Nombre</td>
                    <td align="center">Fecha</td>
                    <td align="center">Sub Total</td>
                    <td align="center">IGV</td>
                    <td align="center">Total</td>
                </tr>
                <c:forEach var="lp" items="${sessionScope.lisPedidos}">
                    <tr>
                        <td><input type="text" name="numPed" size="5" value="${lp[0]}" readonly/></td>
                        <td><input type="text" name="codCli" size="5" value="${lp[1]}" readonly/></td>
                        <td><input type="text" name="nomApe" size="20" value="${lp[2]}" readonly/></td>
                        <td><input type="text" name="fec" size="10" value="${lp[3]}" readonly/></td>
                        <td><input type="text" name="subTot" size="5" value="${lp[4]}" readonly/></td>
                        <td><input type="text" name="igv" size="5" value="${lp[5]}" readonly/></td>
                        <td><input type="text" name="tot" size="5" value="${lp[6]}" readonly/></td>
                            <c:url var="urlConsultar" value="/ControlPedido"><c:param name="op" value="Consultar"/><c:param name="cod" value="${lp[0]}" /></c:url>
                        <td><a class="btn btn-primary py-0" href="${urlConsultar}">Detalles</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <c:if test="${empty sessionScope.lisPedidos}">
            <p>No hay pedidos registrados.</p>
        </c:if>
        <br>
        <div><a href="${pageContext.request.contextPath}/Pedidos/menuPedidos.jsp">Regresar al menú de pedidos</a></div>
    </body>
</html>
