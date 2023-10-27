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
    Usuario usuarioLogado =(Usuario) request.getSession().getAttribute("usuariologado");
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

            .aside,.card-info-voos{
                width: 100% !important;
                margin-top: 15px;

            }

            .detalhes-voo{
               width: 100%!important;
                padding: 15px;
                display: flex;
                justify-content: center!important;
                flex-direction: column;
                align-items: center!important;
                font-size: 20px!important;
            }



        }
    </style>


</head>
<body>

<%
    Integer inicio = 0;
    Integer fim = 10;
%>
<header>
    <jsp:include page="component/menuSite.jsp"/>
</header>
<main class="container" style="min-height: 78vh">

    <div class="ms-2 d-flex">
        <img width="30" height="30" src="https://img.icons8.com/ios/50/airplane-mode-on--v1.png"
             alt="airplane-mode-on--v1"/>
        <p class="ms-2">Confira os <%=fim + 1%> primeiros voos disponiveis </p>
    </div>
    <section class="container justify-content-between d-sm-flex flex-row mt-3 mb-5 ">

        <div class="aside" style="width: 25%">
            <div class="card p-3 bg-primary">
                <h5 class="text-light">Passagens</h5>
                <form action="voosFiltrados" method="get">

                    <div class="d-flex flex-row bg-light p-2 mb-3 card">
                        <div class="p-3">
                            <img width="20" height="20" src="https://img.icons8.com/fluency/48/sourcetree.png"
                                 alt="sourcetree"/>
                        </div>
                        <div class="d-flex flex-column">
                            <label for="origem" class="fs-6 text-secondary ">Origem</label>
                            <input type="text" class="border-0 p-2 bg-light" required name="origem" id="origem"
                                   value="Rio de Janeiro">
                        </div>
                    </div>

                    <div class="d-sm-flex flex-row bg-light p-2 mb-3 card">
                        <div class="p-3">
                            <img width="20" height="20"
                                 src="https://img.icons8.com/external-xnimrodx-blue-xnimrodx/64/external-info-location-xnimrodx-blue-xnimrodx.png"
                                 alt="external-info-location-xnimrodx-blue-xnimrodx"/>
                        </div>
                        <div class="d-flex flex-column">
                            <label for="destino" class="fs-6 text-secondary ">Destino</label>
                            <input type="text" class="border-0 p-2 bg-light" required name="destino" id="destino"
                                   value="Sao Paulo">
                        </div>
                    </div>

                    <div class="d-sm-flex flex-row bg-light p-2 mb-5 card">
                        <div class="p-3">
                            <img width="20" height="20" src="https://img.icons8.com/fluency/48/calendar--v1.png"
                                 alt="calendar--v1"/>
                        </div>
                        <div class="d-flex flex-column">
                            <label for="data_partida" class="fs-6 text-secondary ">Ida</label>
                            <input type="date" class="border-0 p-2 bg-light" required name="data_partida"
                                   id="data_partida"
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


        <div class="card-info-voos d-sm-flex flex-column justify-content-start" style="width: 70%">
            <jsp:useBean id="listaVoosFiltros" scope="request" type="java.util.List"/>

            <jslt:forEach items="${listaVoosFiltros}" var="voo" begin="<%=inicio%>" end="<%=fim%>">

                <form  action="comprarPassagem" method="post" class="form-detalhes-voo w-100 d-sm-flex flex-row align-items-center justify-content-between
             border shadow-sm mb-4 bg-body-tertiary rounded">


                    <input name="id_voo" type="hidden" id="id_voo" value="${voo.id_voo}">
                    <div class="detalhes-voo p-3" style="width:24%">
                        <img width="50" height="50" src="https://img.icons8.com/ios/50/airplane-mode-on--v1.png"
                             alt="airplane-mode-on--v1"/>
                        <p>${voo.companhia_aerea}</p>
                    </div>
                    <div class="detalhes-voo d-sm-flex flex-column align-items-start " style="width:40%">
                        <span>${voo.origem} - ${voo.destino}</span>
                        <span>Data: ${voo.data_partida}</span>
                        <span>Hora partida: ${voo.hora_partida}</span>
                        <span>Duração ${voo.duracao_voo}</span>
                    </div>

                    <div  class="detalhes-voo border-start" style="width:24%">
                        <div class=" p-3">
                            <p class="w-100 text-center fs-5">
                                R$ ${voo.preco_voo - (voo.preco_voo * voo.desconto)/100 }
                            </p>
                        </div>

                        <div class="detalhes-voo p-3">
                            <button type="submit" class="btn btn-warning w-100">Comprar</button>
                        </div>

                    </div>

                </form>

            </jslt:forEach>


        </div>

    </section>

</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>


</body>
</html>