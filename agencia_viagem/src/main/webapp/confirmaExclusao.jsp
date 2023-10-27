<%@ page import="com.br.agencia.agencia_viagem.model.repository.VooRepository" %>
<%@ page import="com.br.agencia.agencia_viagem.model.dominio.Usuario" %>
<%@ taglib prefix="jslt" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 11/10/2023
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Usuario usuarioLogado = (Usuario) request.getSession().getAttribute("usuariologado");
%>

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

    <style>
        @media (max-width: 960px) {
            .content{
                width: 100%!important;
            }
            .endereco{
                display: flex;
                flex-direction: column;
            }

        }
    </style>

</head>
<body>

<header>
    <jsp:include page="component/menuSite.jsp"/>
</header>
<main class="container mb-5" style="min-height: 76vh">


    <div>
        <form action="excluirusuario" class="w-100 d-flex justify-content-center align-items-center h-75">
            <input type="hidden" name="id_usuario" value="<%=usuarioLogado.getId_Cliente()%>">
            <div class="d-flex flex-column   align-items-center p-5 border shadow ">
                <p class="pt-5">Confirma exclusao da sua conta?</p>
                <div class="pb-5 d-flex flex-row justify-content-between">
                    <button type="submit" class="btn btn-primary me-5 " style="width: 100px">SIM</button>
                    <a href="perfil.jsp" class="btn btn-primary  " style="width: 100px">CANCELAR</a>
                </div>
            </div>

        </form>
    </div>

</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>


</body>
</html>