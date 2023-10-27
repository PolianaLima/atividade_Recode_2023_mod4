<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 11/10/2023
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login de Usuario</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="assets/css/globalSite.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    <style>
        @media (max-width: 960px) {
            .formulario-login{
                width: 100%!important;

            }

        }
    </style>

</head>
<body>
<header>
    <jsp:include page="component/menu.html"/>
</header>
<%
    String erro =(String) request.getAttribute("erro");
%>
<main>
    <div class="container d-flex flex-row justify-content-between align-items-center" style="min-height: 79dvh;" id="formulario_login">
        <div class="login_img w-50">
            <img src="assets/img/fundo_login.jpg" class="w-100" alt="Imagem de Login">
        </div>

        <div  class="form w-100 ">
            <form action="loginusuario" class="formulario-login w-75 p-2 d-flex flex-column justify-content-between" style="min-height: 400px;">
                <input type="email" name="email" class="form-control w-100 p-3 mb-2" id="exampleInputEmail1" aria-describ edby="emailHelp" placeholder="Digite Seu email">

                <input type="password" name="senha" class="form-control w-100 p-3" id="exampleInputPassword1" placeholder="Senha">
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input p-2" id="exampleCheck1">
                    <label class="form-check-label p-2" for="exampleCheck1">Manter Login</label>
                </div>
                <button type="submit" class="btn btn-warning p-3 w-100">LOGIN</button>
                <p class="text-danger"><% if(erro != null) {
                    out.print(erro);
                } %></p>
                <p>Ainda nao tem conta?  <a href="cadastrarUsuario.jsp" class="link-primary" ><b>Cadastre-se</b></a></p>

            </form>

        </div>

    </div>
</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>

</body>
</html>