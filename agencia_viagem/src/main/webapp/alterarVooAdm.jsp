<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 26/10/2023
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="jslt" uri="http://java.sun.com/jsp/jstl/core" %>
<!<!doctype html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Alterando voo</title>
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

    <div class="container">

        <form action="editarvoos" method="post" class="w-75 formulario_cadastro">
            <h3 class="mb-3">Edicao de Voo</h3>

            <input type="hidden" name="id_voo" value="${voo.id_voo}">
            <div class="row mb-3">
                <div class="col">
                    <label>Empresa Aerea </label>
                    <input type="text" name="cia_aerea" required class="form-control" value="${voo.companhia_aerea}"
                           placeholder="Companhia Aerea">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <label>Aeroporto de Origem </label>
                    <input type="text" name="aer_partida" required class="form-control" value="${voo.aeroporto_partida}"
                           placeholder="Aeroporto Partida">
                </div>

                <div class="col">
                    <label>Aeroporto de Destino </label>
                    <input type="text" name="aer_chegada" required class="form-control" value="${voo.aeroporto_chegada}"
                           placeholder="Aeroporto CHegada">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label>Valor do Voo </label>
                    <input type="text" name="valor" required class="form-control" placeholder="Valor passagem"
                           value="${voo.preco_voo}">
                </div>

                <div class="col">
                    <label>Desconto Promocional </label>
                    <input type="number" name="desconto" required class="form-control" value="${voo.desconto}"
                           placeholder="Informe se este voo tiver desconto">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label>Data Partida: </label>
                    <input type="date" name="data_partida" required class="form-control" placeholder="Data Partida"
                           value="${voo.data_partida}">
                </div>
                <div class="col">
                    <label>Hora Partida: </label>
                    <input type="time" name="hora_partida" required class="form-control" placeholder="Hora partida"
                           value="${voo.hora_partida}">
                </div>

                <div class="col">
                    <label>Duração Voo: </label>
                    <input type="time" name="duracao_voo" required class="form-control" placeholder="Duracao Voo"
                           value="${voo.duracao_voo}">
                </div>

                <div class="col">
                    <label>Assentos: </label>
                    <input type="number" name="total_assentos" required class="form-control"
                           value="${voo.numero_assentos}"
                           placeholder="Total de assentos">
                </div>


            </div>

            <div class="row mb-3">
                <div class="col">
                    <label>Origem </label>
                    <input type="text" name="origem" required class="form-control" placeholder="Origem: Cidade "
                           value="${voo.origem}">
                </div>
                <div class="col">
                    <label>Destino </label>
                    <input type="text" name="destino" required class="form-control" placeholder="Destino: Cidade"
                           value="${voo.destino}">
                </div>


            </div>

            <div class="button_cadastro col mb-5">
                <input type="submit" class="btn btn-warning w-25 me-5" value="Alterar">
            </div>

        </form>
    </div>

</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>

</body>
</html>