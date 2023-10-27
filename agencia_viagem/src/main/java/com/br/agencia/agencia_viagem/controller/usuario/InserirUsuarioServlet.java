package com.br.agencia.agencia_viagem.controller.usuario;

import com.br.agencia.agencia_viagem.model.dominio.Usuario;
import com.br.agencia.agencia_viagem.model.repository.UsuarioRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/salvarusuario")
public class InserirUsuarioServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        LocalDate nascimento = LocalDate.parse(request.getParameter("data_nascimento"));
        String sexo = request.getParameter("sexo");
        String cpf = request.getParameter("cpf");
        String cep = request.getParameter("cep");
        String estado = request.getParameter("estado");
        String cidade = request.getParameter("cidade");
        String endereco = request.getParameter("endereco");
        Integer numero = Integer.valueOf(request.getParameter("numero"));
        String complemento = request.getParameter("complemento");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        Usuario usuario = Usuario.builder()
                .cpf(cpf)
                .nome(nome)
                .sobrenome(sobrenome)
                .data_nascimento(nascimento)
                .genero(sexo)
                .cep(cep)
                .estado(estado)
                .cidade(cidade)
                .endereco(endereco)
                .numero(numero)
                .complemento(complemento)
                .email(email)
                .senha(senha)
                .build();

        UsuarioRepository.save(usuario);

        response.sendRedirect("login.jsp");
    }

}
