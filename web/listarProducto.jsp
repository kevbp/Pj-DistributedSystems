<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%-- 
    Document   : listarProducto
    Created on : 13 may. 2025, 01:03:14
    Author     : QUINECHE
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<producto> Lista = (List<producto>) request.getAttribute("Lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Productos</title>
        <link href="${pageContext.servletContext.contextPath}/style.css" rel="stylesheet">
    </head>
    <body>
        <h1>Listado de Productos</h1>
        <div class="content">
            <table border="1">
                <tr>
                    <th>Id Producto</th>
                    <th>Descripcion</th>
                    <th>Costo</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th></th>
                </tr>

                <c:forEach var="campo" items="${Lista}">
                    <tr>
                        <td>${campo.id}</td>
                        <td>${campo.descripcion}</td>
                        <td>${campo.costo}</td>
                        <td>${campo.precio}</td>
                        <td>${campo.cantidad}</td>
                        <td>
                            <a href="ControlerProducto?Op=Consultar&Id=${campo.id}">Consultar</a>
                            <a href="ControlerProducto?Op=Eliminar&Id=${campo.id}">Cambiar Estado</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>     
        </div>
        <div style="text-align: center;">
            <a class="back-button" href="Clientes.jsp">Regresar</a>
        </div>
    </body>
</html>