package com.br.agencia.agencia_viagem.controller.usuario;

import com.br.agencia.agencia_viagem.model.dominio.Usuario;
import com.br.agencia.agencia_viagem.model.repository.UsuarioRepository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/editarusuario")
public class AlterarUsuarioServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id_usuario = Integer.valueOf((request.getParameter("id_usuario")));
        Usuario usuarioSelecionado = UsuarioRepository.findById(id_usuario);

        request.setAttribute("usuario", usuarioSelecionado);

        RequestDispatcher rd = request.getRequestDispatcher("/alterarUsuario.jsp");

        rd.forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Usuario usuarioId = (Usuario) request.getSession().getAttribute("usuariologado");

        Integer id_usuario = usuarioId.getId_Cliente();

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
                .id_Cliente(id_usuario)
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
                .build();

        UsuarioRepository.update(usuario);

        Usuario usuarioLogado = UsuarioRepository.findById(id_usuario);

        request.getSession().setAttribute("usuariologado", usuarioLogado);

        response.sendRedirect("perfil.jsp");
    }

}
