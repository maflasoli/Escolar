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
            /*String usuario = (String) session.getAttribute("usuario");
             if (usuario == null) {
                 response.sendRedirect("index.jsp");
             } else {
                 out.print("Bem vindo " + usuario + "<\br>");
             }*/
        %>

        <!--//INICIO DA IMPLEMENTAÇÃO DO CADASTRO-->
        <form action="CadAluno.jsp">
            <!-- area de campos do form -->
            <div class="container">
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="campo1">Campo Um</label>
                        <input type="text" class="form-control" id="campo1">
                    </div>

                    <div class="form-group col-md-4">
                        <label for="campo2">Campo Dois</label>
                        <input type="text" class="form-control" id="campo3">
                    </div>

                    <div class="form-group col-md-4">
                        <label for="campo3">Campo Três</label>
                        <input type="text" class="form-control" id="campo3">
                    </div>
                </div>
            </div>    
            <hr />
            <div id="actions" class="row">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                    <a href="index.jsp" class="btn btn-default">Cancelar</a>
                </div>
            </div>
        </form>






        <script src="assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="assets/jquery-ui-1.12.1.custom/jquery-ui.min.js" type="text/javascript"></script>
    </body>
</html>