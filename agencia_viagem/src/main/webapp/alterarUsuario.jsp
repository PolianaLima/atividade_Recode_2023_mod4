<%@ page import="com.br.agencia.agencia_viagem.model.dominio.Usuario" %><%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 11/10/2023
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Usuario usuariologado = (Usuario) request.getSession().getAttribute("usuariologado");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alterar Usuario</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="assets/css/globalSite.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<header>
    <jsp:include page="component/menuUsuarioLogado.jsp"/>
</header>
<main>
    <div class="container mt-5 text-secondary" style="min-height: 79dvh;">
        <h4>Alterando dados</h4>

        <form action="editarusuario" method="post" class="formulario_cadastro w-75">
            <div class="row mb-3">
                <div class="col">
                    <input type="text" name="nome" class="form-control" value="${usuariologado.nome}">
                </div>
                <div class="col">
                    <input type="text" name="sobrenome" class="form-control" value="${usuariologado.sobrenome}">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <input type="text" name="data_nascimento" class="form-control"
                           value="${usuariologado.data_nascimento}">
                </div>

                <div class="col border rounded ">

                    <input class="form-check-input" type="radio" name="sexo" id="masculino"  value="M">
                    <label class="form-check-label" for="masculino">Masculino</label>

                    <input class="form-check-input" type="radio" name="sexo" id="feminino" value="F">
                    <label class="form-check-label" for="feminino">Feminino</label>
                </div>

                <div class="col">
                    <input type="text" class="form-control" name="cpf" placeholder="Cpf"
                           value="${usuariologado.cpf}">
                </div>
            </div>


            <div class="row mb-3">
                <div class="col">
                    <input type="text" name="cep" class="form-control" value="${usuariologado.cep}">
                </div>
                <div class="col">
                    <input type="text" name="estado" class="form-control" value="${usuariologado.estado}">
                </div>
                <div class="col">
                    <input type="text" name="cidade" class="form-control" value="${usuariologado.cidade}">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-9">
                    <input type="text" name="endereco" class="form-control w-100"
                           value="${usuariologado.endereco}">
                </div>
                <div class="col">
                    <input type="text" name="numero" class="form-control " value="${usuariologado.numero}">
                </div>
            </div>

            <div class="row mb-3 mb-4">
                <div class="col">
                    <input type="text" class="form-control" name="complemento"
                           value="${usuariologado.complemento}">
                </div>
            </div>

            <div class="button_cadastro col mb-5">
                <input type="submit" class="btn btn-warning w-25 me-5" value="Alterar">
            </div>


        </form>
    </div>
</main>


</div>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>

</body>
</html>