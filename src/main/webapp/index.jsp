<%--
  Created by IntelliJ IDEA.
  User: Arquivo
  Date: 30/08/2021
  Time: 21:20
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

        <img src="https://i.ibb.co/RYKm603/LOGO.png">
    </div>


    <section class="hero  is-widescreen">
        <div class="hero-body">
            <div class="container">
                <div class="columns is-centered">
                    <div class="column is-5-tablet is-4-desktop is-3-widescreen">
                        <form action="login" class="box">
                            <div class="field">
                                <label for="" class="label">Email</label>
                                <div class="control has-icons-left">
                                    <input type="email" placeholder="ronier@gmail.com" class="input" required>
                                    <span class="icon is-small is-left">
                  <i class="fa fa-envelope"></i>
                </span>
                                </div>
                            </div>
                            <div class="field">
                                <label  class="label">Senha</label>
                                <div class="control has-icons-left">
                                    <input type="password" placeholder="*******" class="input" required>
                                    <span class="icon is-small is-left">
                  <i class="fa fa-lock"></i>
                </span>
                                </div>
                            </div>
                            <div class="field">
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Lembrar-me
                                </label>
                            </div>
                            <div class="field">
                                <button class="button is-success" href="listaOrdens.jsp">
                                    Login
                                </button>

                            </div>
                        </form>
                        <button class="button is-danger" href='localhost:8080/cadastrarUser.jsp'>
                            Cadastrar
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br>
    <hr>
    <br>
    <br>

    </div>


</section>
</body>
</html>
