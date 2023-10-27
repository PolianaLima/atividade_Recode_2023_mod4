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

@WebServlet("/excluirusuario")
public class ExcluirUsuarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id_usuario = Integer.valueOf((request.getParameter("id_usuario")));

        UsuarioRepository.delete(id_usuario);

        HttpSession session = request.getSession();
        session.invalidate();

        response.sendRedirect("index.jsp");

    }
}
