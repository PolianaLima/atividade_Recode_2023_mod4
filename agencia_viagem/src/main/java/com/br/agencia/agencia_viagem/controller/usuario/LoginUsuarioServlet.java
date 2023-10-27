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

@WebServlet("/loginusuario")
public class LoginUsuarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        Usuario usuarioLogado = new Usuario();

        usuarioLogado = UsuarioRepository.findByEmail(email);



        if (usuarioLogado.getEmail() != null && usuarioLogado.getSenha().equals(senha)) {
            HttpSession session = request.getSession();
            session.setAttribute("usuariologado", usuarioLogado);
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("erro", "Email ou senha incorreto!");
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.forward(request, response);
        }

    }
}