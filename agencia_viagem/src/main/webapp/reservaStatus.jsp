<%@ taglib prefix="jslt" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 11/10/2023
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="assets/css/globalSite.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">


</head>
<body>

<header>
    <jsp:include page="component/menuSite.jsp"/>
</header>
<main class="container" style="min-height: 76vh">
    <div class="d-sm-flex flex-row align-items-center mb-5">
        <img src="assets/img/img_minhas_viagens.png"/>
        <div>
            <p class="text-success fw-bolder ">Sua reserva foi realizada com sucesso!!</p>
            <a href="listarreservas" class="fw-bolder mb-5 " style="text-decoration: none">Ver minhas viagens!!</a>

            <h3 class="mt-5">Já escolheu seu próximo destino?</h3>
            <p>Aproveite as ofertas em voos e planeje sua proxima viagem.</p>
            <a href="voospromocao" class="btn btn-primary w-50">Buscar</a>
        </div>
    </div>

</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>


</body>
</html>