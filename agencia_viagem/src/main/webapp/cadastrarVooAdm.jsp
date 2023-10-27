<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 25/10/2023
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de voos</title>

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
        <form action="cadastrarvoo" method="post" class="w-75 formulario_cadastro">
            <h3 class="mb-3">Cadastro de Voo</h3>

            <div class="row mb-3">
                <div class="col">
                    <label>Empresa Aerea </label>
                    <input type="text" name="cia_aerea" required class="form-control" placeholder="Companhia Aerea">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <label>Aeroporto de Origem </label>
                    <input type="text" name="aer_partida" required class="form-control" placeholder="Aeroporto Partida">
                </div>

                <div class="col">
                    <label>Aeroporto de Destino </label>
                    <input type="text" name="aer_chegada" required class="form-control" placeholder="Aeroporto CHegada">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label>Valor do Voo </label>
                    <input type="text" name="valor" required class="form-control" placeholder="Valor passagem">
                </div>

                <div class="col">
                    <label>Desconto Promocional </label>
                    <input type="number" name="desconto" required class="form-control" placeholder="Informe se este voo tiver desconto">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label>Data Partida: </label>
                    <input type="date" name="data_partida" required class="form-control" placeholder="Data Partida">
                </div>
                <div class="col">
                    <label>Hora Partida: </label>
                    <input type="time" name="hora_partida" required class="form-control" placeholder="Hora partida">
                </div>

                <div class="col">
                    <label>Duração Voo: </label>
                    <input type="time" name="duracao_voo" required class="form-control" placeholder="Duracao Voo">
                </div>

                <div class="col">
                    <label>Hora Partida: </label>
                    <input type="number" name="total_assentos" required class="form-control" placeholder="Total de assentos">
                </div>


            </div>

            <div class="row mb-3">
                <div class="col">
                    <label>Origem </label>
                    <input type="text" name="origem" required class="form-control" placeholder="Origem: Cidade ">
                </div>
                <div class="col">
                    <label>Destino </label>
                    <input type="text" name="destino" required class="form-control" placeholder="Destino: Cidade">
                </div>


            </div>

            <div class="button_cadastro col mb-5">
                <input type="submit" class="btn btn-warning w-25 me-5" value="Cadastrar">
            </div>

        </form>
    </div>

</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>
</body>
</html>
