<%@ page import="com.br.agencia.agencia_viagem.model.repository.VooRepository" %>
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

    <style>
        @media (max-width: 960px) {

            .viagem-detalhes {
                flex-direction: column !important;
                width: 100%!important;
            }

        }
    </style>

</head>
<body>

<header>
    <jsp:include page="component/menuSite.jsp"/>
</header>
<main class="container mb-5" style="min-height: 76vh">
    <div class="d-sm-flex flex-row align-items-center">
        <img src="assets/img/img_minhas_viagens.png"/>
        <div>
            <h3>Já escolheu seu próximo destino?</h3>
            <p>Aproveite as ofertas em voos e planeje sua proxima viagem.</p>
            <a href="voospromocao" class="btn btn-primary w-50">Buscar</a>
        </div>
    </div>

    <div >
        <jsp:useBean id="passagens" scope="request" type="java.util.List" />
        <jslt:forEach items="${passagens}" var="passagem">
            <div class="viagem-detalhes card d-sm-flex flex-row mb-5 w-75">
                <img src="assets/img/img_card_padrao.jpg">
                <form action="exlcuirreserva" method="post" class="p-2">
                    <div class="d-flex flex-column mb-3">
                        <input type="hidden" name="id_reserva" value="${passagem.id_reserva}">

                        <h2>${passagem.origem} - ${passagem.destino}</h2>
                        <span>Empresa: ${passagem.companhia_aerea}</span>
                        <span>Aeroporto: ${passagem.aeroporto_partida} - ${passagem.aeroporto_chegada}</span>
                        <span class="d-flex">
                            <img width="20" height="20" src="https://img.icons8.com/fluency/48/calendar--v1.png"
                                 alt="calendar--v1"/>
                            <span>${passagem.data_partida}</span>
                        </span>
                        <span>Partida: ${passagem.hora_partida}</span>
                        <span>Duração: ${passagem.duracao_voo}</span>
                    </div>

                    <button class="btn btn-warning ">Cancelar</button>
                </form>

            </div>



        </jslt:forEach>
    </div>

</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>


</body>
</html>