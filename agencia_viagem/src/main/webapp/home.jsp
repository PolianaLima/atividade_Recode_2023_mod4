<%@ page import="com.br.agencia.agencia_viagem.model.dominio.Usuario" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 11/10/2023
  Time: 06:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pt-BR" xmlns="http://www.w3.org/1999/html">
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
        @media(max-width: 960px) {

            .card  {
                flex-direction: column!important;
                align-items: center!important;
            }

        }
    </style>
</head>



<body>
<header>

    <jsp:include page="component/menuSite.jsp"/>

</header>

<main>
    <div name="banner" id="bg-img-home_busca"
         class="container-fluid d-flex flex-column justify-content-center align-items-center">

        <div class="container d-flex flex-column justify-content-center align-items-center">
            <h2 class="text-light ">Seu destino está aqui</h2>
            <h1 class="text-light ">Viaje com segurança, conforto e os <span class="text-warning">Menores Preços</span>
            </h1>
        </div>


        <form action="voosFiltrados" method="get" class="container d-lg-flex form">
            <input class="form-control me-2 mb-2" required type="input" name="origem" placeholder="Origem">
            <input class="form-control me-2 mb-2" required type="input" name="destino" placeholder="Destino">
            <input class="form-control me-2 mb-2" required type="date" name="data_partida">
            <button class="btn btn-warning me-2 w-100 mb-2" type="submit">Buscar</button>
        </form>
    </div>

    <div class="container-sm mt-5 mb-5">


        <h1 class="container text-center text-warning"> VIAJE CONOSCO</h1>
        <h3 class="container text-center mb-4">Para destinos maravilhosos!!</h3>

        <div class="row row-sm-cols-3">
            <div class="col-sm mb-3">
                <img class="w-100" src="assets/img/viagem_rio_janeiro.jpg">
            </div>

            <div class="col-sm mb-3">
                <img class="w-100" src="assets/img/viagem_fernando_noronha.jpg"/>
            </div>

            <div class="col-sm mb-3">
                <img class="w-100" src="assets/img/viagens_nacionais.jpg"/>
            </div>

        </div>

    </div>

    <div class="container">
        <div name="vantages" class="container-fluid pt-5 pb-5">

            <h1 class="container text-center text-warning"> PORQUE NOS ESCOLHER?</h1>
            <h3 class="container text-center mb-4">Veja as vantagens de viajar conosco</h3>

            <div class="container d-sm-flex justify-content-between">

                <div class="card d-sm-flex flex-row p-2 mb-3 shadow " style="max-width: 23rem; min-width: 20rem">
                    <img width="100px" height="180px" src="assets/img/preco.png">
                    <div class="card-body">
                        <h4 class="card-title w-100  ">Preço Garantido</h4>
                        <p class="card-text w-100 ">Aqui voce encontra os melhores preços.
                            Promoções imperdiveis com pacotes personalizados especialmente para voce!!</p>
                    </div>
                </div>


                <div class="card d-sm-flex flex-row p-2 mb-3 shadow " style="max-width: 23rem; min-width: 20rem">
                    <img width="100px" height="180px" src="assets/img/destinos.png">
                    <div class="card-body">
                        <h4 class="card-title w-100">Destinos Variados</h4>
                        <p class="card-text w-100">Escolha o seu melhor destinos. Aqui temos
                            destinos para todos os gostos e Historias</p>
                    </div>
                </div>

                <div class="card d-sm-flex flex-row p-2 mb-3 shadow " style="max-width: 23rem; min-width: 20rem">
                    <img width="100px" height="180px" src="assets/img/servico.png">
                    <div class="card-body">
                        <h4 class="card-title w-100">Serviço de Qualidade</h4>
                        <p class="card-text w-100">Oferecemos os melhores serviços para você com
                            segurança e praticidade. Alem de segurança e comodidade</p>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <div class="container text-center mb-5">
        <div class="row">
            <div class="col">
                <img class="rounded" src="assets/img/pesquise.webp" alt="">
                <h4 class="text-center text-warning">Pesquise</h4>
            </div>
            <div class="col">
                <img class="rounded" src="assets/img/compre.webp" alt="">
                <h4 class="text-center text-warning">Compre</h4>
            </div>
            <div class="col">
                <img class="rounded" src="assets/img/viaje.webp" alt="">
                <h4 class="text-center text-warning">Viaje</h4>
            </div>
        </div>
    </div>


</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>

</body>
</html>