<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 25/10/2023
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrador</title>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="assets/css/globalSite.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<header>
    <jsp:include page="component/menuAdm.html"/>
</header>
<main style="min-height: 79vh">
    <div class="container d-flex flex-column align-items-center justify-content-center h-75">
        <h3 class="mb-3"> Seja bem vindo ao Férias & Lazer</h3>
        <h4 >
            <img width="20" height="20" src="https://img.icons8.com/3d-fluency/94/rocket.png" alt="rocket"/>
            Painel Admministrador</h4>
        <div class="border border-1 shadow d-flex flex-column align-items-center justify-content-center p-5" style="min-width: 400px">
            <a  class="btn btn-primary p-2 mb-2 w-100" href="cadastrarVooAdm.jsp">Cadastrar voos</a>
            <a class="btn btn-primary p-2 mb-2 w-100" href="voosadm">Listar Voos</a>

        </div>
    </div>

</main>




<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>
</body>
</html>
