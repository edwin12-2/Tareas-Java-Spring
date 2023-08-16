<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tareas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <div class="container">
            <h2 class="text-center" >Lista de tareas</h2>
            <div class="p-4">
                <a class="btn btn-primary" href="agregar.jsp">Agregar</a>
            </div>
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
        pst=conn.prepareStatement("select * from tareas");
        rs=pst.executeQuery();
        %> 
        
        <div>
            <table class="table table-primar table-bordered">
                <tr class="table-dark">
                    <th>#</th>                    
                    <th>Título</th>
                    <th>Persona</th>
                    <th>Descripción</th>
                    <th>Materiales</th>
                    <th>Fecha inicio</th>
                    <th>Fecha final</th>
                    <th>Horas</th>
                    <th>Costo</th>
                    <th>Porcentaje</th>
                    <th>Estado</th>
                    <th>Acción</th>

                </tr>
                <%
                while(rs.next()){
                %>
                <tr>
                    <td><%= rs.getInt("id")%></td>                    
                    <td><%= rs.getString("titulo")%></td>    
                    <td><%= rs.getString("persona")%></td>  
                    <td><%= rs.getString("descripcion")%></td> 
                    <td><%= rs.getString("imagen")%></td>
                    <td><%= rs.getDate("fechaI")%></td>   
                    <td><%= rs.getDate("fechaF")%></td>   
                    <td><%= rs.getString("horas")%></td>    
                    <td><%= rs.getString("costo")%></td> 
                    <td><%= rs.getString("porcentaje")%></td>
                    <td><%= rs.getString("estado")%></td>   
                    <td>
                        <a href="editar.jsp?id=<%= rs.getInt("id")%>" class="btn btn-success"><i class="icon fa fa-edit"></i></a>
                        <a href="eliminar.jsp?id=<%= rs.getInt("id")%>" class="btn btn-danger"><i class="icon fa fa-trash"></i></a>
                    </td>
                </tr>   
                <%}%>
            </table>
        </div>
        
        </div>

    </body>
</html>
