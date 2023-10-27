<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 25/10/2023
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="jslt" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div class="container ">
        <h3 class="mb-3"> Lista de voos cadastrados</h3>

        <jsp:useBean id="listaVoosAdm" scope="request" type="java.util.List"/>
        <div class="row">

            <jslt:forEach items="${listaVoosAdm}" var="voo">
                <form class="col mb-5">
                    <card class="card p-1"
                          style="width: 21rem">
                        <p class="fw-bolder fs-5">
                            <img width="20" height="20" src="https://img.icons8.com/3d-fluency/94/rocket.png"
                                 alt="rocket"/>
                            Voo: ${voo.numero_voo}
                        </p>
                        <hr>
                        <span>Empresa:${voo.companhia_aerea} </span>
                        <span>Numero:${voo.numero_voo} </span>
                        <span>Origem:${voo.origem} </span>
                        <span>Destino:${voo.destino} </span>
                        <span>Aer. Partida: ${voo.aeroporto_partida} </span>
                        <span>Aer. chegada: ${voo.aeroporto_chegada} </span>
                        <span>Data: ${voo.data_partida} </span>
                        <span>Hora: ${voo.hora_partida} </span>
                        <span>Duracao: ${voo.duracao_voo} </span>
                        <span>Assentos: ${voo.numero_assentos}</span>
                        <span>Valor: ${voo.preco_voo} </span>
                        <span>Desconto:  ${voo.desconto}%</span>

                        <div class="mt-3">
                            <a href="editarvoos?id=${voo.id_voo}" class="btn btn-success">Editar</a>
                            <a href="excluir?id=${voo.id_voo}" onclick="return confirm('Deseja Excluir?')"
                               class="btn btn-danger">Excluir</a>
                        </div>
                    </card>

                </form>
            </jslt:forEach>

        </div>

    </div>

</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>
</body>
</html>

