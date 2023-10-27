package com.br.agencia.agencia_viagem.controller.reserva;

import com.br.agencia.agencia_viagem.model.dominio.Reserva;
import com.br.agencia.agencia_viagem.model.dominio.Usuario;
import com.br.agencia.agencia_viagem.model.repository.ReservaRepository;
import com.br.agencia.agencia_viagem.utilsystem.GeradorNumeroAutomatico;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/comprarPassagem")
public class InserirReservaServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        request.getSession().getAttribute("usuariologado");

        if ( request.getSession().getAttribute("usuariologado") == null) {
            response.sendRedirect("login.jsp");
        } else {

            Usuario usuarioLogado = (Usuario) request.getSession().getAttribute("usuariologado");
            Integer id_usuariologado = usuarioLogado.getId_Cliente();

            Integer id_voo = Integer.valueOf(request.getParameter("id_voo"));

            int numero_bilhete = GeradorNumeroAutomatico.gerarNumeroAleatorio(1, 1000);

            ReservaRepository.save(Reserva.builder()
                    .id_voo(id_voo)
                    .numero_bilhete(numero_bilhete)
                    .id_cliente(id_usuariologado)
                    .build());

            response.sendRedirect("reservaStatus.jsp");

            /*request.getRequestDispatcher("/listarreservas")
                    .forward(request, response);*/
        }

    }


}
