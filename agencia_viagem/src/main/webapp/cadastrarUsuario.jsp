<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 11/10/2023
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Usuario</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="assets/css/globalSite.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<header>
    <jsp:include page="component/menu.html"/>
</header>
<main>
    <div class="container mt-5 text-secondary" style="min-height: 79dvh;">
        <h4 class="mb-4">Cadastre-se e aproveite os melhores preços em passagens aéreas!</h4>

        <form action="salvarusuario" method="post" class="formulario_cadastro w-75">

            <div class="row mb-3">
                <div class="col">
                    <input type="text" name="nome" required class="form-control" placeholder="Primeiro Nome">
                </div>
                <div class="col">
                    <input type="text" name="sobrenome" required class="form-control" placeholder="Ultimo Nome">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <input type="date" name="data_nascimento" class="form-control"
                           placeholder="Data de Nascimento AAAA/MM/DD">
                </div>
                <div class="col border rounded">
                    <input class="form-check-input" type="radio" name="sexo" id="masculino" value="M">
                    <label class="form-check-label" for="masculino">Masculino</label>

                    <input class="form-check-input" type="radio" name="sexo" id="feminino" value="F">
                    <label class="form-check-label" for="feminino">Feminino</label>
                </div>
                <div class="col">
                    <input type="text" class="form-control" name="cpf" required placeholder="Cpf">
                </div>
            </div>


            <div class="row mb-3">
                <div class="col">
                    <input type="text" name="cep" class="form-control" placeholder="CEP">
                </div>
                <div class="col">
                    <input type="text" name="estado" class="form-control" placeholder="Estado">
                </div>
                <div class="col">
                    <input type="text" name="cidade" class="form-control" placeholder="Cidade">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-9">
                    <input type="text" name="endereco" class="form-control w-100" placeholder="Endereço">
                </div>
                <div class="col">
                    <input type="text" name="numero" class="form-control " placeholder="Numero">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <input type="text" class="form-control" name="complemento" placeholder="Complemento">
                </div>
            </div>


            <div class="row mb-3">
                <div class="col">
                    <input type="email" name="email" class="form-control" required placeholder="Digite Seu e-mail">
                </div>
                <div class="col">
                    <input type="password" name="senha" class="form-control" required placeholder="Digite sua senha">
                </div>

            </div>


            <div class="col mb-2 ">
                <input class="form-check-input" type="checkbox" name="termo" id="sim" value="F">
                <label class="form-check-label" for="sim">Li e aceito os Termos e Condições de serviço</label>
            </div>


            <div class="button_cadastro col mb-5">
                <input type="submit" class="btn btn-warning w-25 me-5" value="Cadastrar">
                <a href="login.jsp" class="btn btn-warning w-25"> Já sou cadastrado</a>
            </div>


        </form>

</main>


</div>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>

</body>
</html>