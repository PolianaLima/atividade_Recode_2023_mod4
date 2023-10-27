<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 11/10/2023
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
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

            .container-sm {
                width: 100% !important;
            }

        }
    </style>

</head>
<body>
<header>
    <jsp:include page="component/menuSite.jsp"/>
</header>

<main>
    <div class="container-sm d-sm-flex flex-row  justify-content-between " style="min-height: 60vh;">

        <div class="contato_info w-100  d-sm-flex flex-column justify-content-center  p-5">
            <img class="w-100" src="assets/img/img_contato.png"/>
        </div>


        <div class="form d-sm-flex w-100 flex-column justify-content-between p-5 bg-light rounded-4">
            <h1 class="text-secondary">Contate-nos</h1>
            <input  type="text" name="contato" id="nome" placeholder="Digite seu nome"
                   class="p-2 w-100 mb-2 border rounded-2">
            <input type="text" name="contato" id="email" placeholder="Digite seu e-mail"
                   class="p-2 mb-2 w-100 border rounded-2">
            <textarea name="contato" id="mensagem" rows="5" placeholder="Dugite sua duvida ou mensagem"
                      class="p-2 w-100 mb-2 border rounded-2"></textarea>
            <a href="#" class="btn  btn-warning w-100 p-2"> ENVIAR MENSAGEM</a>
        </div>

    </div>


</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>

</body>
</html>