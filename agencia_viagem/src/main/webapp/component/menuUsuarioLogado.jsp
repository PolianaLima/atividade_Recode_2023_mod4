<%@ page import="java.util.Objects" %>
<%@ page import="com.br.agencia.agencia_viagem.model.dominio.Usuario" %>
<%@ taglib prefix="jslt" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 13/10/2023
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Usuario usuarioLogado =(Usuario) request.getSession().getAttribute("usuariologado");
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

<menu class="container-fluid bg-color_menu mt-0">
    <nav class=" container navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand text-light me-5 d-flex flex-row align-items-end" href="index.jsp">
                <img width="60px" src="assets/img/logo.png">
                <p>FÉRIAS & LAZER</p>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="voosFiltrados">Destino</a></li>
                    <li class="nav-item"><a class="nav-link" href="voospromocao">Promoções</a></li>
                    <li class="nav-item"><a class="nav-link" href="contato.jsp">Contato</a></li>

                </ul>

                <div class="nav-item dropdown pe-5 justify-content-center">
                    <img width="60" height="60" src="https://img.icons8.com/fluency/96/000000/user-male-circle--v2.png"
                         alt="user-male-circle--v2"/>
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Olá, <%= usuarioLogado.getNome() + " " +usuarioLogado.getSobrenome()%>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="listarreservas">Minhas Viagens</a></li>
                        <li><a class="dropdown-item" href="perfil.jsp">Perfil</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="logoutusuario">Sair</a></li>
                    </ul>
                </div>

            </div>
        </div>

    </nav>
</menu>

</body>
</html>
