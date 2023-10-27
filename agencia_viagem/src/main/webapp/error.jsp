<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 18/10/2023
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de Erro</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="assets/css/globalSite.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    <style>
        @media (max-width: 960px) {

            .aside{
                width: 100% !important;
            }


        }
    </style>

</head>
<body>
<header>
    <jsp:include page="component/menu.html"/>
</header>
<%
    String erro = (String) request.getAttribute("erro");
%>
<main style="min-height: 78vh">
    <section class="container-sm justify-content-between d-sm-flex flex-row mt-5 mb-5 ">

        <div class="aside container-sm mb-3" style="width: 25%">
            <div class="card p-3 bg-primary">
                <h5 class="text-light">Passagens</h5>
                <form action="voosFiltrados">

                    <div class="d-flex flex-row bg-light p-2 mb-3 card">
                        <div class="p-3">
                            <img width="20" height="20" src="https://img.icons8.com/fluency/48/sourcetree.png"
                                 alt="sourcetree"/>
                        </div>
                        <div class="d-flex flex-column">
                            <label for="origem" class="fs-6 text-secondary ">Origem</label>
                            <input type="text" class="border-0 p-2 bg-light" name="origem" id="origem"
                                   value="Rio de Janeiro">
                        </div>
                    </div>

                    <div class="d-flex flex-row bg-light p-2 mb-3 card">
                        <div class="p-3">
                            <img width="20" height="20"
                                 src="https://img.icons8.com/external-xnimrodx-blue-xnimrodx/64/external-info-location-xnimrodx-blue-xnimrodx.png"
                                 alt="external-info-location-xnimrodx-blue-xnimrodx"/>
                        </div>
                        <div class="d-flex flex-column">
                            <label for="destino" class="fs-6 text-secondary ">Destino</label>
                            <input type="text" class="border-0 p-2 bg-light" name="destino" id="destino"
                                   value="Sao Paulo">
                        </div>
                    </div>

                    <div class="d-flex flex-row bg-light p-2 mb-5 card">
                        <div class="p-3">
                            <img width="20" height="20" src="https://img.icons8.com/fluency/48/calendar--v1.png"
                                 alt="calendar--v1"/>
                        </div>
                        <div class="d-flex flex-column">
                            <label for="data_partida" class="fs-6 text-secondary ">Ida</label>
                            <input type="date" class="border-0 p-2 bg-light" name="data_partida" id="data_partida"
                                   value="01/01/2023">
                        </div>
                    </div>

                    <button type="submit" class="W-100 btn btn-warning">
                        <img width="20" height="20" src="https://img.icons8.com/windows/32/search--v1.png"
                             alt="search--v1"/>
                        BUSCAR
                    </button>
                </form>

            </div>

        </div>


        <div class="d-sm-flex flex-column ms-2 justify-content-end"
            <%-- style="width: 70%;
             background-image: url(assets/img/voo_not_found.jpg);
             background-size: cover;
             background-repeat: no-repeat;
             background-position: 0px;
             "--%>>
            <img width="100%"  src="assets/img/voo_not_found.jpg"/>

        </div>

    </section>

</main>

<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>
</body>
</html>
