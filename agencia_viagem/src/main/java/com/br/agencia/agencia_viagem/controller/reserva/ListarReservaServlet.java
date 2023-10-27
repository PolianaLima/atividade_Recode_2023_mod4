package com.br.agencia.agencia_viagem.controller.reserva;

import com.br.agencia.agencia_viagem.model.dominio.Passagem;
import com.br.agencia.agencia_viagem.model.dominio.Reserva;
import com.br.agencia.agencia_viagem.model.dominio.Usuario;
import com.br.agencia.agencia_viagem.model.dominio.Voo;
import com.br.agencia.agencia_viagem.model.repository.ReservaRepository;
import com.br.agencia.agencia_viagem.model.repository.VooRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/listarreservas")
public class ListarReservaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Usuario usuarioId = (Usuario) request.getSession().getAttribute("usuariologado");

        Integer id_usuario = usuarioId.getId_Cliente();

        List<Reserva> reservas = ReservaRepository.listarReservasCliente(id_usuario);

        List<Passagem> passagems = ReservaRepository.innerJoinReservaVoo(id_usuario);

        request.setAttribute("passagens", passagems);

        request.getRequestDispatcher("minhasViagens.jsp")
                .forward(request, response);

    }
}
