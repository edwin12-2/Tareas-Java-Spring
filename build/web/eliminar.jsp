<%-- 
    Document   : eliminar
    Created on : 15-ago-2023, 14:03:54
    Author     : User
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        pst=conn.prepareStatement("delete from tareas where id="+id);
        pst.executeUpdate();
        response.sendRedirect("lista.jsp");
        %> 
    </body>
</html>
