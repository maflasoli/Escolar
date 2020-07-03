<%-- 
    Document   : sair
    Created on : 03/07/2020, 14:07:57
    Author     : Administrador
--%>

<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>