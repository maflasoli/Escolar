<%-- 
    Document   : CadAluno
    Created on : 03/07/2020, 15:14:09
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    
    </head>
    <body>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if (usuario == null) {
                response.sendRedirect("index.jsp");
            } else {
                out.print("Bem vindo " + usuario + "<\br>");
            }
        %>
        
        
        
    </body>
</html>
