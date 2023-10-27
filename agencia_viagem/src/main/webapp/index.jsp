<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 25/10/2023
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home-login Agencia de viagem</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="assets/css/globalSite.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">


    <style>
        @media (max-width: 960px) {

            main{
                margin: auto;
                margin-top: 50%;
            }

        h3{
            font-size: 20px;
      }

        }
    </style>


</head>
<body>
<header>
    <menu class="container-fluid bg-color_menu mt-0">
        <nav class=" container navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand text-light me-5 d-flex flex-row align-items-end" href="index.jsp">
                    <img width="60px" src="assets/img/logo.png">
                    <p>FÉRIAS & LAZER</p>
                </a>


            </div>
        </nav>
    </menu>
</header>
<main class="container d-sm-flex flex-column align-items-center justify-content-center pt-5" style="min-height: 79vh">
    <div class="card-info">
        <h3 class="mb-3"> Seja bem vindo ao Férias & Lazer</h3>
        <p class="fs-3"> O que deseja fazer ?</p>
        <div class="border card-info border-1 shadow d-flex flex-column align-items-center justify-content-center p-5">
            <a class="btn btn-primary p-2 mb-3 w-100" href="home.jsp">Comprar passagens</a>
            <a class="btn btn-primary p-2 w-100" href="homeAdm.jsp">Painel de Administrador</a>
        </div>
    </div>

</main>

<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>


</body>
</html>
