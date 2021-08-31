<%--
  Created by IntelliJ IDEA.
  User: Arquivo
  Date: 31/08/2021
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WALLET</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
</head>
<body>
<section class="section hero is-primary is-bold">
    <div class="container">
        <div align="center">
            <img src="https://i.ibb.co/RYKm603/LOGO.png">
        </div>
        <nav class="navbar" role="navigation" aria-label="dropdown navigation">
            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link has-text-dark">
                    MENU
                </a>

                <div class="navbar-dropdown">
                    <a class="navbar-item has-text-dark" href="cadastrarMoeda.jsp">
                        Cadastrar
                    </a>
                    <a class="navbar-item has-text-dark" href="listaOrdens.jsp">
                        Mostrar
                    </a>
                    <hr class="navbar-divider">
                    <div class="navbar-item has-text-dark">
                        Version 1.0.0
                    </div>
                </div>
            </div>
        </nav>
        <div class="table-container">
            <p class="subtitle has-text-dark" align="center">Lista de ordens</p>
            <form>
                <div class="field">
                    <label class="label as-text-dark">Pesquisar: </label>
                    <div class="control">
                        <input class="input hero is-bold is-white" type="text" placeholder="Busca por código ou moeda" name="pesquisa" id="pesquisa">
                    </div>
                </div>
            </form>
            <br><br>
            <table class="table is-fullwidth hero is-white is-bold">
                <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Moeda</th>
                    <th>Quantidade</th>
                    <th>Preço</th>
                    <th>Cotação Atual</th>
                    <th>Opção</th>
                </tr>
                </thead>
                <tbody class="resultadoPesquisa">

                </tbody>
            </table>
        </div>
        <hr>
        <a class="twitter-timeline" href="https://twitter.com/criptofacil?ref_src=twsrc%5Etfw">Tweets by criptofacil</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="javascriptPesquisar.js" type="text/JavaScript">
        </script>
</section>

</body>
</html>
