
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="..\styles\styles.css">
        <title>Inicio de Sesión</title>
    </head>
    <body class="d-flex align-items-center py-4 bg-body-tertiary">
        <div class="form-login w-100 m-auto">
            <div class="form-container">
                <h2 class="text-center mb-4">Inicia sesión</h2>
                <form action="ValidarLogin" method="post">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="txtUsuario" id="txtUsuario" name="txtUsuario" placeholder="Usuario" required>
                        <label for="txtUsuario">Usuario</label>
                    </div>

                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" name="txtClave" id="txtClave" placeholder="Contraseña" maxlength="30" required>
                        <label for="txtClave">Contraseña</label>
                    </div>
  
                    <div class="pb-3"></div>
                    
                    <div class="d-grid gap-2 mx-auto">
                        <button type="submit" class="btn btn-primary" name="validar" value="Aceptar">Ingresar</button>
                    </div>

                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
    </body>
</html>