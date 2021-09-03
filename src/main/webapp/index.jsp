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
<section class="section hero is-primary is-bold is-fullhd ">
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

            <br><br>
            <table class="table is-fullwidth hero is-white is-bold">
                <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Moeda</th>
                    <th>Preço</th>
                    <th>Cotação Atual</th>
                    <th>Opção</th>

                </tr>
                </thead>
                <div th:each="moedas : ${moedas}">
                    <div class="row">
                        <p><span th:text="${crypto_moedas.cod_coin}"></span></p>
                        <p><span th:text="${crypto_moedas.nome_coin}"></span></p>
                        <p><span th:text="${crypto_moedas.valor_coin}"></span></p>
                     </div>
                </div>
            </table>
        </div>
        <hr>
    </div>
</section>

</body>
</html>
