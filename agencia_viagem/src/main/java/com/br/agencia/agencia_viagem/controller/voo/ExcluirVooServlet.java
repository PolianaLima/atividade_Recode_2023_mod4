package com.br.agencia.agencia_viagem.controller.voo;

import com.br.agencia.agencia_viagem.model.repository.VooRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/excluir")
public class ExcluirVooServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id_voo = Integer.valueOf(request.getParameter("id"));

        VooRepository.delete(id_voo);
        response.sendRedirect("voosadm");

    }
}
