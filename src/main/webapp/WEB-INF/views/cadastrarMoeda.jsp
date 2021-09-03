<%--
  Created by IntelliJ IDEA.
  User: Arquivo
  Date: 31/08/2021
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="modelAttribute" uri="http://www.springframework.org/tags/form" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                    <a class="navbar-item has-text-grey-darker" href="/moedas/mostra">
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
            <form:form method="post" action="cadastro" modelAttribute="CryptoMoedas">
                <div align="center">
                    <p class="subtitle has-text-grey-darker">Cadastro de Ordem</p>
                </div>
                <br>
                <div class="field">
                    <div class="control">
                    <form:label path="nome_coin" align="center">Moeda:</form:label>
                    <form:select path="nome_coin" items="${moedasList}" class="select is-widescreen"></form:select>
                    </div>
                </div>


                <div class="field">

                    <form:label path="valor_coin" align="center">Preço pago:</form:label>
                    <form:input path="valor_coin" class="input"></form:input>

                </div>

                </br>
                <div align="center">
                    <div class="control">
                        <form:button class="button is-dark">Cadastrar</form:button>
                    </div>
                </div>

            </form:form>


        </div>
        <br>
        <hr>
        <br>
        <br>
    </div>


</section>

</body>
</html>
