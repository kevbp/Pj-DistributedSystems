<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${sessionScope.usuAut == null}">
    <c:redirect url="../login.jsp" />
</c:if>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>Listado de clientes</title>
    </head>
    <body>
        <h1>Lista de clientes</h1>
        <p>
            <c:if test="${param.msg == '2'}">
                El usuario se eliminó satisfactoriamente.
            </c:if>
        <p>
        <c:if test="${not empty sessionScope.lista}">
            <table>
                <tr>
                    <td align="center">Codigo</td>
                    <td align="center">Nombres</td>
                    <td align="center">Apellidos</td>
                    <td align="center">Dirección</td>
                    <td align="center">DNI</td>
                    <td align="center">Telefono</td>
                    <td align="center">Celular</td>
                    <td align="center">Estado</td>
                </tr>
                <c:forEach var="cliente" items="${sessionScope.lista}">
                    <tr>
                        <td><input type="text" name="cod" size="5" value="${cliente.codCliente}" readonly/></td>
                        <td><input type="text" name="nom" size="25" value="${cliente.nom}" readonly/></td>
                        <td><input type="text" name="ape" size="25" value="${cliente.ape}" readonly/></td>
                        <td><input type="text" name="dir" size="40" value="${cliente.dir}" readonly/></td>
                        <td><input type="text" name="dni" size="10" value="${cliente.dni}" readonly/></td>
                        <td><input type="text" name="tel" size="10" value="${cliente.tel}" readonly/></td>
                        <td><input type="text" name="cel" size="10" value="${cliente.cel}" readonly/></td>
                        <td><input type="text" name="est" size="10" value="${cliente.est}" readonly/></td>
                            <c:url var="urlConsultar" value="/ControlCliente">
                                <c:param name="op" value="Consultar"/>
                                <c:param name="cod" value="${cliente.codCliente}" />
                            </c:url>
                        <td><a class="btn btn-primary py-0" href="${urlConsultar}">Detalles</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <c:if test="${empty sessionScope.lista}">
            <p>No hay clientes registrados.</p>
        </c:if>
        <br>
        <div><a href="${pageContext.request.contextPath}/Clientes/menuClientes.jsp">Regresar al menú de clientes</a></div>
    </body>
</html>
