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

        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">

        <script>
            function saporra(){
                alert("Deu certo saporra");
            }
        </script>
        

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
            <div class="p-3 m-10 bg-info text-white rounded border border-dark container" >

                <!--FAZENDO AJUSTE DE LARGURA DO CONTAINER-->

                <div class="my-0 row justify-content-md-center">
                    <div class="form-group col-md-5 shadow p-4 mb-4">
                        <label for="ue">Unidade Escolar</label>
                        <input type="text" class="form-control form-control-sm" id="ue" name="ue">
                    </div>
                </div>
                <!------------------------------------------------------------------------>
                Aluno
                <div class="mx-0 px-0 row justify-content-md-center border-top">

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="RM">RM</label>
                        <input type="text" class="form-control form-control-sm" id="RM" name="rm">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="rgra">RG/RA</label>
                        <input type="text" class="form-control form-control-sm" id="rgra" name="rgra">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-6">
                        <label for="nomealuno">Nome</label>
                        <input type="text" class="form-control form-control-sm" id="nomealuno" name="nomealuno">
                    </div>
                </div>
                <!------------------------------------------------------------------------>
                Nascimento
                <div class="mx-0 px-0 row justify-content-md-center border-top">

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="cidnascimento">Cidade</label>
                        <input type="text" class="form-control form-control-sm" id="cidnascimento" name="cidnascimento">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-1">
                        <label for="ufnascimento">UF</label>
                        <input type="text" class="form-control form-control-sm" id="ufnascimento" name="ufnascimento">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="nacionalidade">Nacionalidade</label>
                        <input type="text" class="form-control form-control-sm" id="nacionalidade" name="nacionalidade">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="corraca">Cor/Raça</label>
                        <input type="text" class="form-control form-control-sm" id="corraca" name="corraca">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="dtanascimento">Data</label>
                        <input type="text" class="form-control form-control-sm" id="dtanascimento" name="dtanascimento">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-1">
                        <label for="sexo">Sexo</label>
                        <input type="text" class="form-control form-control-sm" id="sexo" name="sexo">
                    </div>
                </div>
                <!------------------------------------------------------------------------>
                Documentação(Certidão de Nascimento)
                <div class="mx-0 px-0 row justify-content-md-center border-top">

                    <div class="mx-1 px-0 form-group col-md-1">
                        <label for="folhadoc">Folha</label>
                        <input type="text" class="form-control form-control-sm" id="folhadoc" name="folhadoc">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-1">
                        <label for="livrodoc">Livro</label>
                        <input type="text" class="form-control form-control-sm" id="livrodoc" name="livrodoc">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-1">
                        <label for="numdoc">Número</label>
                        <input type="text" class="form-control form-control-sm" id="numdoc" name="numdoc">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="dtaemidoc">Data Emissão</label>
                        <input type="text" class="form-control form-control-sm" id="dtaemidoc" name="dtaemidoc">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-3">
                        <label for="comarcadoc">Comarca</label>
                        <input type="text" class="form-control form-control-sm" id="comarcadoc" name="comarcadoc">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-3">
                        <label for="mundoc">Distrito/Município</label>
                        <input type="text" class="form-control form-control-sm" id="mundoc" name="mundoc">
                    </div>
                    <div class="mx-1 px-0 form-group col-md-5">
                        <label for="certnovadoc">Certidão Nova</label>
                        <input type="text" class="form-control form-control-sm" id="certnovadoc" name="certnovadoc">
                    </div>
                </div>
                <!------------------------------------------------------------------------>
                Documentação(R.G. Civil / C.P.F.)
                <div class="mx-0 px-0 row justify-content-md-center border-top">

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="rgcivil">R.G. Civil</label>
                        <input type="text" class="form-control form-control-sm" id="rgcivil" name="rgcivil">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="dtaemirgcivil">Data Emissão</label>
                        <input type="text" class="form-control form-control-sm" id="dtaemirgcivil" name="dtaemirgcivil">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-2">
                        <label for="cpf">C.P.F.</label>
                        <input type="text" class="form-control form-control-sm" id="cpf" name="cpf">
                    </div>
                    <div class="mx-1 px-0 form-group col-md-1">
                        <label for="bolsafamilia">Bolsa Família</label>
                        <input type="text" class="form-control form-control-sm" id="bolsafamilia" name="bolsafamilia">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-4">
                        <label for="numnis">Número do N.I.S.</label>
                        <input type="text" class="form-control form-control-sm" id="numnis" name="numnis">
                    </div>
                </div>
                <!------------------------------------------------------------------------>

                Filiação e/ou Responsável
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">Aluno</th>
                            <th scope="col">Indice</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Associação</th>
                            <th scope="col">Telefone</th>
                            <th scope="col">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1122</th>
                            <td>1</td>
                            <td>Antônio José</td>
                            <td>Pai</td>
                            <td>(11)97845-1234</td>
                            <td>
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalResponsaveis">
                                    Alterar
                                </button>
                                <button type="button" class="btn btn-danger">Excluir</button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2233</th>
                            <td>2</td>
                            <td>Maria Mercedes</td>
                            <td>Mãe</td>
                            <td>(11) 96352-2536</td>
                            <td>
                                <button type="button" class="btn btn-secondary">Alterar</button>
                                <button type="button" class="btn btn-danger">Excluir</button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">3344</th>
                            <td>3</td>
                            <td>Janaína Lopes</td>
                            <!--<td colspan="2">Janaína Lopes</td> EXEMPLO DE MAIS DE UMA COLUNA NA LINHA-->
                            <td>Tia</td>
                            <td>(11) 4534-0295</td>
                            <td>
                                <button type="button" class="btn btn-secondary">Alterar</button>
                                <button type="button" class="btn btn-danger">Excluir</button>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <!-- MODAL CADASTRO DE PAIS E/OU RESPONSÁVEIS POR ALUNO -->
                <div class="modal" id="ModalResponsaveis" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" data-backdrop="static" data-keyboard="false" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                        <div class="modal-content alert-primary">
                            <div class="modal-header">
                                <h5 class="modal-title" id="TituloModalCentralizado">Cadastro de Responsáveis</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form name="frmCadResponsavel" action="CadAluno.jsp" method="POST">
                                    <!------------------------------------------------------------------------>
                                    <!--RA FICARÁ INVISÍVEL.. VEJAMOS SUA REAL NECESSIDADE AQUI-->
                                    <div class="ml-1 px-0 form-group col-md-2" hidden="true">
                                        <label for="raaluno">R.A.</label>
                                        <input type="text" class="form-control form-control-sm" id="raaluno" name="raaluno">
                                    </div>
                                    Responsável
                                    <div class="mx-0 px-0 row justify-content-md-center border-top">
                                        <div class="ml-1 px-0 form-group col-md-4">
                                            <label for="nomeresponsavel">Nome</label>
                                            <input type="text" class="form-control form-control-sm" id="nomeresponsavel" name="nomeresponsavel">
                                        </div>

                                        <div class="ml-1 px-0 form-group col-md-2">
                                            <label for="rgresponsavel">R.G.</label>
                                            <input type="text" class="form-control form-control-sm" id="rgresponsavel" name="rgresponsavel">
                                        </div>
                                        <div class="ml-1 px-0 form-group col-md-2">
                                            <label for="cpfresponsavel">C.P.F.</label>
                                            <input type="text" class="form-control form-control-sm" id="cpfresponsavel" name="cpfresponsavel">
                                        </div>
                                        <div class="ml-1 px-0 form-group col-md-2">
                                            <label for="associacao">Associação</label>
                                            <input type="text" class="form-control form-control-sm" id="associacao" name="associacao">
                                        </div>
                                        <div class="ml-1 px-0 form-group col-md-2">
                                            <label for="escolaridade">Escolaridade</label>
                                            <input type="text" class="form-control form-control-sm" id="escolaridade" name="escolaridade">
                                        </div>
                                    </div>
                                    Contatos
                                    <div class="mx-0 px-0 row justify-content-md-center border-top">
                                        <div class="ml-1 px-0 form-group col-md-3">
                                            <label for="telresidencia">Tel.Residencial</label>
                                            <input type="text" class="form-control form-control-sm" id="telresidencia" name="telresidencia">
                                        </div>

                                        <div class="ml-1 px-0 form-group col-md-2">
                                            <label for="telcelular">Tel.Celular</label>
                                            <input type="text" class="form-control form-control-sm" id="telcelular" name="telcelular">
                                        </div>
                                        <div class="ml-1 px-0 form-group col-md-2">
                                            <label for="emailresponsavel">e-mail@</label>
                                            <input type="text" class="form-control form-control-sm" id="emailresponsavel" name="emailresponsavel">
                                        </div>
                                    </div>
                                    Trabalho
                                    <div class="mx-0 px-0 row justify-content-md-center border-top">
                                        <div class="ml-1 px-0 form-group col-md-3">
                                            <label for="profissao">Profissão</label>
                                            <input type="text" class="form-control form-control-sm" id="profissao" name="profissao">
                                        </div>

                                        <div class="ml-1 px-0 form-group col-md-3">
                                            <label for="empresa">Empresa</label>
                                            <input type="text" class="form-control form-control-sm" id="empresa" name="empresa">
                                        </div>
                                        <div class="ml-1 px-0 form-group col-md-3">
                                            <label for="endempresa">End.Empresa</label>
                                            <input type="text" class="form-control form-control-sm" id="endempresa" name="endempresa">
                                        </div>
                                        <div class="ml-1 px-0 form-group col-md-2">
                                            <label for="telempresa">Tel.Empresa</label>
                                            <input type="text" class="form-control form-control-sm" id="telempresa" name="telempresa">
                                        </div>
                                    </div>
                                    <!------------------------------------------------------------------------>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                    <!--<button type="submit" class="btn btn-success">Salvar</button>-->
                                    <button onclick="saporra()"; class="btn btn-success">Salvar</button>
                                </form>
                                <!--
                                COLOCAR AQUI O CÓDIGO PARA A INCLUSÃO DO RESPONSÁVEL
                                -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- FIM - MODAL CADASTRO DE PAIS E/OU RESPONSÁVEIS POR ALUNO -->

                <!------------------------------------------------------------------------>
                Endereço
                <div class="mx-0 px-0 row justify-content-md-center border-top">

                    <div class="mx-1 px-0 form-group col-md-1">
                        <label for="cepaluno">C.E.P.</label>
                        <input type="text" class="form-control form-control-sm" id="cepaluno" name="cepaluno">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-3">
                        <label for="ruaaluno">Rua</label>
                        <input type="text" class="form-control form-control-sm" id="ruaaluno" name="ruaaluno">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-1">
                        <label for="numendaluno">Nº</label>
                        <input type="text" class="form-control form-control-sm" id="numendaluno" name="numendaluno">
                    </div>
                    <div class="mx-1 px-0 form-group col-md-3">
                        <label for="compendaluno">Complemento</label>
                        <input type="text" class="form-control form-control-sm" id="compendaluno" name="compendaluno">
                    </div>

                    <div class="mx-1 px-0 form-group col-md-3">
                        <label for="bairroaluno">Bairro</label>
                        <input type="text" class="form-control form-control-sm" id="bairroaluno" name="bairroaluno">
                    </div>
                    <div class="mx-1 px-0 form-group col-md-3">
                        <label for="cidadealuno">Bairro</label>
                        <input type="text" class="form-control form-control-sm" id="cidadealuno" name="cidadealuno">
                    </div>
                    <div class="mx-1 px-0 form-group col-md-1">
                        <label for="ufaluno">U.F.</label>
                        <input type="text" class="form-control form-control-sm" id="ufaluno" name="ufaluno">
                    </div>
                </div>
                <!------------------------------------------------------------------------>



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
        <script src="assets/web/assets/jquery/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>
