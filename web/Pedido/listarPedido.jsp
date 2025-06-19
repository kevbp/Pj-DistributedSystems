<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<pedido> Lista = (List<pedido>) request.getAttribute("Lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Pedidos</title>
        <link href="${pageContext.servletContext.contextPath}/style.css" rel="stylesheet">
    </head>
    <body>
        <h1>Listado de Pedidos</h1>
        <div class="content">
            <table border="1">
                <tr>
                    <td>Id Pedido</td>
                    <td>Id Cliente</td>
                    <td>Apellidos</td>
                    <td>Nombres</td>
                    <td>Fecha</td>
                    <td>Total Pedido</td>
                    <th></th>
                </tr>

                <c:forEach var="campo" items="${Lista}">
                    <tr>
                        <td>${campo.getId_Pedido()}</td>
                        <td>${campo.getId_Cliente()}</td>
                        <td>${campo.getApellidos()}</td>
                        <td>${campo.getNombres()}</td>
                        <td>${campo.getFecha()}</td>
                        <td>${campo.getTotalVenta()}</td>
                        <td>
                            <a href="ControlerPedido?Op=Consultar&Id=${campo.getId_Pedido()}">Consultar</a>
                            <a href="ControlerPedido?Op=Eliminar&Id=${campo.getId_Pedido()}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </table> 
        </div>
        <div style="text-align: center;">
            <a class="back-button" href="Pedido/Pedidos.jsp">Regresar</a>
        </div>
    </body>
</html>
