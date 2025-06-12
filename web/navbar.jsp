<%@page import="Entidades.usuarios"%>
<%@ page session="true" %>
<%
    usuarios nuser = (usuarios) session.getAttribute("nuser");
    String perfil = (nuser != null) ? nuser.getPerfil() : "";
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
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" href="Solicitud.jsp">Contratar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active mx-1 my-1 fw-semibold" href="Cliente\Clientes.jsp">Clientes</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" href="registrarUsuario.jsp">Gestión de Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" href="Clientes.jsp">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" href="Productos.jsp">Producto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" href="Pedidos.jsp">Pedidos</a>
                    </li>

                    <li class="nav-item dropdown mx-1 my-1">
                        <div class="btn-group btn-primary">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                Mi perfil
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end text-center">
                                <li>
                                    <form name="submitForm" action="../Cliente" method="POST">
                                        <a class="dropdown-item" href="javascript:document.submitForm.submit()">Cambiar a proveedor</a>
                                    </form>
                                </li>
                                <li>
                                    <form name="cerrar" action="../CerrarSesion" method="POST">
                                        <a class="dropdown-item" href="javascript:document.cerrar.submit()">Cerrar Sesión</a>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
