<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    </head>

    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Gestión de tareas</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                  <a class="nav-link active" aria-current="page" href="redirect.jsp">Inicio</a>
                  <a class="nav-link" href="registro.jsp">Registro</a>
                  <a class="nav-link" href="ingresar.jsp">Ingresar</a>
                </div>
              </div>
            </div>
        </nav>
        <div class="container">
            <form class="row g-3">
              <div class="col-9 mb-3">
                <label for="staticEmail2" class="visually-hidden">Email</label>
                <input type="text" class="form-control" id="staticEmail2">
              </div>
              <div class="col-9 mb-3">
                <label for="staticEmail2" class="visually-hidden">Direción</label>
                <input type="text" class="form-control" id="staticEmail2">
              </div>
              <div class="col-9 mb-3">
                <label for="inputPassword2" class="visually-hidden">Password</label>
                <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
              </div>
              <div class="col-9 mb-3">
                <button type="submit" class="btn btn-primary mb-3">Registrarse</button>
              </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    </body>
</html>