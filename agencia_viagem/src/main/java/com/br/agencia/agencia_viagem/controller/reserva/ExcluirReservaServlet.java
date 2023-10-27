package com.br.agencia.agencia_viagem.controller.reserva;

import com.br.agencia.agencia_viagem.model.repository.ReservaRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/exlcuirreserva")
public class ExcluirReservaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id_reserva = Integer.valueOf(request.getParameter("id_reserva"));
        System.out.println(id_reserva);

        ReservaRepository.deletarReservaId(id_reserva);

        response.sendRedirect("viagemCancelada.jsp");

    }
}
