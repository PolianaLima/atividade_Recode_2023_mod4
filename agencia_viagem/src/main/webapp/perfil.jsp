<%@ page import="com.br.agencia.agencia_viagem.model.repository.VooRepository" %>
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
    Usuario usuarioLogado = (Usuario) request.getSession().getAttribute("usuariologado");
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
            .content{
                width: 100%!important;
            }
            .endereco{
                display: flex;
                flex-direction: column;
            }

        }
    </style>

</head>
<body>

<header>
    <jsp:include page="component/menuSite.jsp"/>
</header>
<main class="container mb-5" style="min-height: 76vh">
    <div class="content w-75">
        <div class="shadow-sm p-3 mb-5 bg-body-tertiary rounded">
            <div class="perfil-topo d-sm-flex flex-row justify-content-between mt-5 mb-2">
                <div class="d-sm-flex align-items-center">
                    <img width="100" height="100"
                         src="https://img.icons8.com/fluency/96/000000/user-male-circle--v2.png"
                         alt="user-male-circle--v2"/>
                    <div>

                        <h1 class="fs-4 p-0 mb-0"><%=usuarioLogado.getNome() %> <%=usuarioLogado.getSobrenome()%>
                        </h1>
                        <p><%=usuarioLogado.getEmail()%>
                        </p>
                    </div>
                </div>
                <div>

                    <a href="alterarUsuario.jsp" class="btn btn-primary">EDITAR</a>
                </div>

            </div>
            <hr>
            <div class="p-2 mb-1 fs-5">

                <p class="pe-4"><strong>CPF:</strong> <%=usuarioLogado.getCpf()%>
                </p>
                <p class="pe-4"><strong>Nascimento:</strong> <%=usuarioLogado.getData_nascimento()%>
                </p>
                <p class="pe-4"><strong>Genero:</strong> <%=usuarioLogado.getGenero()%>
                </p>


                <p class="pe-4 endereco"><strong>Endereco:</strong> <%=usuarioLogado.getEndereco()%>
                    <span class="pe-4"><strong>Numero: </strong><%=usuarioLogado.getNumero()%></span></p>
                <p class="pe-4"><strong>Cidade:</strong> <%=usuarioLogado.getCidade()%>
                </p>
                <p><strong>Estado: </strong><%=usuarioLogado.getEstado()%>
                </p>
                <div>
                    <a href="confirmaExclusao.jsp" class="btn btn-primary">
                        EXCLUIR MINHA CONTA
                    </a>
                </div>

            </div>
        </div>


    </div>

</main>


<footer class="bg-color_menu p-3">
    <jsp:include page="component/footer.html"/>
</footer>


</body>
</html>