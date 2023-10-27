package com.br.agencia.agencia_viagem.controller.voo;


import com.br.agencia.agencia_viagem.model.dominio.Voo;
import com.br.agencia.agencia_viagem.model.repository.VooRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/voos")
public class ListarVoosServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Voo> voos = VooRepository.listarVoos();
        request.setAttribute("listaVoos", voos);
        request.getRequestDispatcher("destino.jsp")
                .forward(request, response);
    }
}
