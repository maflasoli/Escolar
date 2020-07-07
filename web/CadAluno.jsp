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
            <!-- area de campos do form .... onde consta ("p-3 mb-2 bg-info text-white") é sobre a cor ("rounded") é arredondar as pontas..-->
            <div class="p-3 mb-2 bg-info text-white rounded border border-dark container" >

                <!--FAZENDO AJUSTE DE LARGURA DO CONTAINER-->

                <div class="row justify-content-md-center">

                    <div class="form-group col-md-5">
                        <label for="ue">Unidade Escolar</label>
                        <input type="text" class="form-control" id="ue" name="ue">
                    </div>
                </div>
                <!------------------------------------------------------------------------>
                Aluno
                <div class="row justify-content-md-center border-top">

                    <div class="form-group col-md-2">
                        <label for="RM">RM</label>
                        <input type="text" class="form-control" id="RM" name="rm">
                    </div>

                    <div class="form-group col-md-2">
                        <label for="rgra">RG/RA</label>
                        <input type="text" class="form-control" id="rgra" name="rgra">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="nomealuno">Nome</label>
                        <input type="text" class="form-control" id="nomealuno" name="nomealuno">
                    </div>
                </div>
                <!------------------------------------------------------------------------>
                Nascimento
                <div class="row justify-content-md-center border-top">

                    <div class="form-group col-md-3">
                        <label for="cidnascimento">Cidade</label>
                        <input type="text" class="form-control" id="cidnascimento" name="cidnascimento">
                    </div>

                    <div class="form-group col-md-1">
                        <label for="ufnascimento">UF</label>
                        <input type="text" class="form-control" id="ufnascimento" name="ufnascimento">
                    </div>

                    <div class="form-group col-md-3">
                        <label for="nacionalidade">Nacionalidade</label>
                        <input type="text" class="form-control" id="nacionalidade" name="nacionalidade">
                    </div>

                    <div class="form-group col-md-2">
                        <label for="corraca">Cor/Raça</label>
                        <input type="text" class="form-control" id="corraca" name="corraca">
                    </div>

                    <div class="form-group col-md-2">
                        <label for="dtanascimento">Data</label>
                        <input type="text" class="form-control" id="dtanascimento" name="dtanascimento">
                    </div>

                    <div class="form-group col-md-1">
                        <label for="sexo">Sexo</label>
                        <input type="text" class="form-control" id="sexo" name="sexo">
                    </div>
                </div>
                <!------------------------------------------------------------------------>
                Documentação(Certidão de Nascimento)
                <div class="row justify-content-md-center border-top">

                    <div class="form-group col-md-1">
                        <label for="folhadoc">Folha</label>
                        <input type="text" class="form-control" id="folhadoc" name="folhadoc">
                    </div>

                    <div class="form-group col-md-1">
                        <label for="livrodoc">Livro</label>
                        <input type="text" class="form-control" id="livrodoc" name="livrodoc">
                    </div>

                    <div class="form-group col-md-1">
                        <label for="numdoc">Número</label>
                        <input type="text" class="form-control" id="numdoc" name="numdoc">
                    </div>

                    <div class="form-group col-md-2">
                        <label for="dtaemidoc">Data Emissão</label>
                        <input type="text" class="form-control" id="dtaemidoc" name="dtaemidoc">
                    </div>

                    <div class="form-group col-md-3">
                        <label for="comarcadoc">Comarca</label>
                        <input type="text" class="form-control" id="comarcadoc" name="comarcadoc">
                    </div>

                    <div class="form-group col-md-3">
                        <label for="mundoc">Distrito/Município</label>
                        <input type="text" class="form-control" id="mundoc" name="mundoc">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="certnovadoc">Certidão Nova</label>
                        <input type="text" class="form-control" id="certnovadoc" name="certnovadoc">
                    </div>
                </div>
                <!------------------------------------------------------------------------>
                Documentação(R.G. Civil / C.P.F.)
                <div class="row justify-content-md-center border-top">

                    <div class="form-group col-md-2">
                        <label for="rgcivil">R.G. Civil</label>
                        <input type="text" class="form-control" id="rgcivil" name="rgcivil">
                    </div>

                    <div class="form-group col-md-2">
                        <label for="dtaemirgcivil">Data Emissão</label>
                        <input type="text" class="form-control" id="dtaemirgcivil" name="dtaemirgcivil">
                    </div>

                    <div class="form-group col-md-2">
                        <label for="cpf">C.P.F.</label>
                        <input type="text" class="form-control" id="cpf" name="cpf">
                    </div>
                    <div class="form-group col-md-1">
                        <label for="bolsafamilia">Participa do Bolsa Família</label>
                        <input type="text" class="form-control" id="bolsafamilia" name="bolsafamilia">
                    </div>

                    <div class="form-group col-md-4">
                        <label for="numnis">Número do N.I.S.</label>
                        <input type="text" class="form-control" id="numnis" name="numnis">
                    </div>
                </div>

            </div>    
            <hr />

            <!--APÓS O CADASTRO, CHAMAR O SERVLET MOSTRANDO TODOS OS DADOS,
                INCLUSIVE FOTO SE POSSÍVEL, E DAR OPÇÃO DE IMPRIMIR, ALTERAR
                OU DE ATÉ MESMO CANCELAR O CADASTRO DO ALUNO...
            -->

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
