<%-- 
    Document   : acesso
    Created on : 03/07/2020, 13:19:35
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PASSOU</title>
    </head>
    <body>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if(usuario==null){
                response.sendRedirect("index.jsp");
            }else{
                out.print("Bem vindo " + usuario +"<\br>");
            }
        %>
        <h1>PASSOU - 1</h1>
        <a href="sair.jsp"> Voltar <\a>
    </body>
</html>