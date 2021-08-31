<%--
  Created by IntelliJ IDEA.
  User: Arquivo
  Date: 31/08/2021
  Time: 09:10
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

        <div class="container">
            <form method="post" action="registrarUser">
                <div align="center">
                    <br>
                    <p class="subtitle has-text-grey-darker">Cadastro de usuário</p>
                </div>
                <br>
                <div class="field">
                    <label class="label">Nome: </label>
                    <div class="control">
                        <input class="input" type="text" placeholder="ex: Ronier" name="nome" id="nome">
                    </div>
                </div>

                <div class="field">
                    <label class="label">Email: </label>
                    <div class="control">
                        <input class="input" type="text" placeholder="ronier@gmail.com" name="email" id="email">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Senha: </label>
                    <div class="control">
                        <input class="input" type="password" name="senha" id="senha">
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
