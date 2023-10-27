<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 11/10/2023
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="jslt" uri="http://java.sun.com/jsp/jstl/core" %>
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

            .card-info-voos{
                width: 100% !important;
                margin-top: 15px;

            }
            .img{
                width: 100%!important;
            }

            .oferta{
                width: 100% !important;
                padding-left: 20px;
                padding-right: 20px;
                align-items: center;
                justify-content: center;
                display: flex;
                flex-direction: column;
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
<header>
    <jsp:include page="component/menuSite.jsp"/>
</header>

<main class="container">
    <div class="w-100 mb-5">
        <img class="w-100" src="assets/img/banner_page_promo.jpg">
    </div>

    <div class="card-info-voos d-sm-flex flex-column justify-content-start">
        <jsp:useBean id="listaVoosPromocao" scope="request" type="java.util.List"/>

        <jslt:forEach items="${listaVoosPromocao}" var="voo">

            <form  action="comprarPassagem" method="post" class="form-detalhes-voo w-100 d-sm-flex flex-row align-items-center justify-content-between
             border shadow-sm mb-4 bg-body-tertiary rounded">


                <input name="id_voo" type="hidden" id="id_voo" value="${voo.id_voo}">

                <div class="img" style="width: 200px">
                    <img src="assets/img/img_card_padrao.jpg" class="card-img-top" alt="Card Img padrao">
                </div>

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

                <div class="oferta me-5" style="width: 20%">
                    <p class="bg-danger text-light p-2 rounded-4">Oferta imbativel</p>
                    <span class="p-2 bg-success fs-6 text-light fst-italic rounded-4">${voo.desconto}%</span>
                </div>

                <div  class="detalhes-voo border-start" style="width:24%">
                    <div class=" p-2">
                        <p class="w-100 text-center fs-5">
                           De:<strike>R$ ${voo.preco_voo}0</strike> <br>
                           Por: R$ ${voo.preco_voo - (voo.preco_voo * voo.desconto)/100 }0
                        </p>
                    </div>

                    <div class="detalhes-voo p-3">
                        <button type="submit" class="btn btn-warning w-100">Comprar</button>
                    </div>

                </div>

            </form>

        </jslt:forEach>


    </div>

   <%-- <div class="container-sm text-center">

        <jsp:useBean id="listaVoosPromocao" scope="request" type="java.util.List"/>
        <div class="w-100 card-info">
            <jslt:forEach items="${listaVoosPromocao}" var="voo">
                <form action="comprarPassagem" method="post" class="col mb-5 border p-3 ">
                    <input name="id_voo" type="hidden" id="id_voo" value="${voo.id_voo}">
                    <div class="d-sm-flex justify-content-between align-items-center">
                        <div style="width: 200px">
                            <img src="assets/img/img_card_padrao.jpg" class="card-img-top" alt="Card Img padrao">
                        </div>
                        <div class="d-sm-flex w-75 justify-content-between">
                            <div>
                                <h5>Voo para ${voo.destino}</h5>
                                <p>Saindo de ${voo.origem}</p>
                            </div>
                            <div>
                                <p class="bg-danger text-light p-2 rounded-3">Oferta imbativel</p>
                            </div>


                            <div class="d-flex justify-content-between">
                                <div class="d-flex flex-column align-items-end">
                                    <span class="p-2 bg-success fs-6 text-light fst-italic">${voo.desconto}%</span>
                                    <span class="fs-3"> R$ ${voo.preco_voo - (voo.preco_voo * voo.desconto)/100 } </span>
                                </div>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-warning w-100">Comprar</button>
                            </div>

                        </div>
                    </div>

                </form>

            </jslt:forEach>
        </div>

    </div>--%>


</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>

</body>
</html>