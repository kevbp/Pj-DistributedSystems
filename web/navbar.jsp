<%@page import="Entidades.usuarios"%>
<%@ page session="true"%>
<%
    usuarios nuser = (usuarios) session.getAttribute("usuario");
    String perfil;
    if (nuser != null) {
        perfil = nuser.getPerfil();
    } else {
        perfil = "";
    }
%>
<nav class="navbar navbar-expand-lg navbar-white bg-white p-3 header-nav">
    <div class="container-fluid px-3">
        <a href="" class="text-decoration-none color-logo  pe-5">
            <h1 class="text-start color-logo fs-2">Menu Principal</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2" aria-controls="offcanvasNavbar2" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-end text-bg-white" tabindex="-1" id="offcanvasNavbar2" aria-labelledby="offcanvasNavbar2Label">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbar2Label">Navegación</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1">
                    <%
                        if (perfil.equals("Administrador")) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1 my-1 fw-semibold" href="Admin/registrarUsuario.jsp">Gestión de Usuarios</a>
                    </li>
                    <%}
                        if (perfil.equals("Empleado") || perfil.equals("Administrador")) {%>
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" href="Cliente/Clientes.jsp">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" href="Producto/Productos.jsp">Producto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" href="Pedido/Pedidos.jsp">Pedidos</a>
                    </li>
                    <%};%>
                    <li class="nav-item dropdown mx-1 my-1">
                        <div class="btn-group btn-primary">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                Mi perfil
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end text-center">
                                <li>
                                    <a class="dropdown-item" href="CerrarSesion">Cerrar Sesión</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
