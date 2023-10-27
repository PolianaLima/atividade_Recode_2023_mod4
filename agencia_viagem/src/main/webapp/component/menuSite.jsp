<%@ page import="com.br.agencia.agencia_viagem.model.dominio.Usuario" %><%--
  Created by IntelliJ IDEA.
  User: polly
  Date: 13/10/2023
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Usuario usuarioLogado =(Usuario) request.getSession().getAttribute("usuariologado");
%>
<% if (usuarioLogado == null) {%>
<jsp:include page="menu.html"/>
<%} else {%>
<jsp:include page="menuUsuarioLogado.jsp"/>
<%}%>