<%-- 
    Document   : editar
    Created on : 15-ago-2023, 13:25:02
    Author     : User
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    </head>
    <body>
        <%
        Connection conn;
        String url = "jdbc:mysql://node148058-tareal.jelastic.saveincloud.net:3306/tareasdb";
        String Driver = "com.mysql.jdbc.Driver";
        String usuario = "root";
        String clave = "SKEmpx90116";
        Class.forName(Driver);
        conn=DriverManager.getConnection(url,usuario,clave);
        
        PreparedStatement pst;
        ResultSet rs;
        int id = Integer.parseInt(request.getParameter("id"));
        pst=conn.prepareStatement("select * from tareas where id="+id);
        rs=pst.executeQuery();
        
        while(rs.next()){
        %> 
        <div class="container">
            <h2 class="text-center" >Editar tarea</h2>
            <hr>
            <form class="row g-3 needs-validation" method="post">
              <div class="col-md-4 position-relative">
                <label for="validationTooltip01" class="form-label">Título</label>
                <input type="text" class="form-control" id="validationTooltip01" name="titulo" value="<%= rs.getString("titulo")%>" required>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
              <div class="col-md-4 position-relative">
                <label for="validationTooltip02" class="form-label">Nombre de la persona</label>
                <input type="text" class="form-control" id="validationTooltip02" name="persona" value="<%= rs.getString("persona")%>" required>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
              <div class="col-md-4 position-relative">
                <label for="validationTooltip02" class="form-label">Descripción</label>
                <input type="text" class="form-control" id="validationTooltip03" name="describir" value="<%= rs.getString("descripcion")%>" required>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
              <div class="col-md-4 position-relative">
                <label for="validationTooltip02" class="form-label">Materiales</label>
                <input type="text" class="form-control" id="validationTooltip04" name="imagen" value="<%= rs.getString("imagen")%>" required>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
              <div class="col-md-4 position-relative">
                <label for="validationTooltip03" class="form-label">Fecha inicio</label>
                <input type="date" class="form-control" id="validationTooltip05" name="inicio" value="<%= rs.getString("fechaI")%>" required>
                <div class="invalid-tooltip">
                  Please provide a valid city.
                </div>
              </div>
              <div class="col-md-4 position-relative">
                <label for="validationTooltip03" class="form-label">Fecha final</label>
                <input type="date" class="form-control" id="validationTooltip06" name="final" value="<%= rs.getString("fechaF")%>" required>
                <div class="invalid-tooltip">
                  Please provide a valid city.
                </div>
              </div>
              <div class="col-md-6 position-relative">
                <label for="validationTooltip03" class="form-label">Horas</label>
                <input type="text" class="form-control" id="validationTooltip07" name="hora" value="<%= rs.getString("horas")%>" required>
                <div class="invalid-tooltip">
                  Please provide a valid city.
                </div>
              </div>
              <div class="col-md-6 position-relative">
                <label for="validationTooltip03" class="form-label">Costo</label>
                <input type="text" class="form-control" id="validationTooltip08" name="costo" value="<%= rs.getString("costo")%>" required>
                <div class="invalid-tooltip">
                  Please provide a valid city.
                </div>
              </div>
              <div class="col-md-6 position-relative">
                <label for="validationTooltip03" class="form-label">Porcentaje</label>
                <input type="text" class="form-control" id="validationTooltip09" name="porcentaje" value="<%= rs.getString("porcentaje")%>" required>
                <div class="invalid-tooltip">
                  Please provide a valid city.
                </div>
              </div>
              <div class="col-md-3 position-relative">
                <label for="validationTooltip04" class="form-label">Estado</label>
                <select class="form-select" id="validationTooltip04" name="estado" value="" required>
                  <option selected disabled value=""><%= rs.getString("estado")%></option>
                  <option>En proceso</option>
                  <option>Completado</option>
                </select>
                <div class="invalid-tooltip">
                  Please select a valid state.
                </div>
              </div>
              <div class="col-12">
                <button class="btn btn-primary" type="submit">Actualizar</button>
              </div>
            </form>
        </div>
        <%}%>
    </body>
</html>
<%
String ti,pe,de,im,in,fi,ho,co,po,es;
ti=request.getParameter("titulo");
pe=request.getParameter("persona");
de=request.getParameter("describir");
im=request.getParameter("imagen");
in=request.getParameter("inicio");
fi=request.getParameter("final");
ho=request.getParameter("hora");
co=request.getParameter("costo");
po=request.getParameter("porcentaje");
es=request.getParameter("estado");


if (ti!=null && pe!=null){
    pst=conn.prepareStatement("update tareas set titulo='"+ti+"',persona='"+pe+"',descripcion='"+de+"',imagen='"+im+"',"
            + " fechaI='"+in+"',fechaF='"+fi+"',horas='"+ho+"',costo='"+co+"',porcentaje='"+po+"',estado='"+es+"' where id="+id);
    pst.executeUpdate();
    response.sendRedirect("lista.jsp");
}
%>