<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    List<cliente> Lista = (List<cliente>) request.getAttribute("Lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Clientes</title>
        <link href="${pageContext.servletContext.contextPath}/style.css" rel="stylesheet">
    </head>
    <body>
        <h1>Listado de Clientes</h1>
        <div class="content">
            <table border="1">
                <tr>
                    <th>Id Cliente</th>
                    <th>Apellidos</th>
                    <th>Nombres</th>
                    <th>Direccion</th>
                    <th>DNI</th>
                    <th>Telefono</th>
                    <th>Movil</th>
                    <th></th>
                </tr>

                <c:forEach var="campo" items="${Lista}">
                    <tr>
                        <td>${campo.id}</td>
                        <td>${campo.apellidos}</td>
                        <td>${campo.nombres}</td>
                        <td>${campo.direccion}</td>
                        <td>${campo.dni}</td>
                        <td>${campo.telefono}</td>
                        <td>${campo.movil}</td>
                        <td>
                            <a href="ControlerCliente?Op=Consultar&Id=${campo.id}">Consultar</a>
                            <a href="ControlerCliente?Op=Modificar&Id=${campo.id}">Modificar</a>
                            <a href="ControlerCliente?Op=Eliminar&Id=${campo.id}">Cambiar Estado</a>
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