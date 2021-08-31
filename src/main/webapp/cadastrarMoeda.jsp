<%--
  Created by IntelliJ IDEA.
  User: Arquivo
  Date: 31/08/2021
  Time: 12:03
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
                    <a class="navbar-item has-text-grey-darker" href="cadastrarMoeda.jsp">
                        Cadastrar
                    </a>
                    <a class="navbar-item has-text-grey-darker" href="listaOrdens.jsp">
                        Mostrar
                    </a>
                    <hr class="navbar-divider">
                    <div class="navbar-item has-text-grey-darker">
                        Version 1.0.0
                    </div>
                </div>
            </div>
        </nav>
        <div class="container">
            <form method="post" action="registrarMoeda">
                <div align="center">
                    <p class="subtitle has-text-grey-darker">Cadastro de Ordem</p>
                </div>
                <br>
                <div class="field">
                    <label class="label">Moeda:</label>
                    <div class="select" name = "compra" id="compra">

                        <select>
                            <option>Bitcoin</option>
                            <option>XRP</option>
                            <option>Ethereum</option>
                            <option>Chiliz</option>
                            <option>Litecoin</option>
                            <option>Compound</option>
                        </select>
                    </div>
                </div>

                <div class="field">
                    <label class="label">Quantidade: </label>
                    <div class="control">
                        <input class="input" type="text" placeholder="ex: 100" name="quantidade" id="quantidade">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Preço pago: </label>
                    <div class="control">
                        <input class="input" type="text" placeholder="ex: 3,00" name="preco" id="preco">
                    </div>
                </div>

                </br>
                <div align="center">
                    <div class="control">
                        <button type="submit" class="button is-dark" name="opcao" value="cadastrar">Cadastrar</button>
                    </div>
                </div>

            </form>


        </div>
        <br>
        <hr>
        <br>
        <br>
    </div>


</section>

</body>
</html>
