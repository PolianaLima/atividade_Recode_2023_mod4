package com.br.agencia.agencia_viagem.controller.voo;

import com.br.agencia.agencia_viagem.model.dominio.Voo;
import com.br.agencia.agencia_viagem.model.repository.VooRepository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;

@WebServlet("/editarvoos")
public class AlterarVooServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id_voo = Integer.valueOf(request.getParameter("id"));
        Voo vooSelecionado = VooRepository.listarVooById(id_voo);

        request.setAttribute("voo", vooSelecionado);

        RequestDispatcher rd = request.getRequestDispatcher("/alterarVooAdm.jsp");
        rd.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id_voo = Integer.valueOf(request.getParameter("id_voo"));
        Voo vooSelecionado = VooRepository.listarVooById(id_voo);

        String companhia_aerea = request.getParameter("cia_aerea");
        String aeroporto_partida = request.getParameter("aer_partida");
        String aeroporto_chegada = request.getParameter("aer_chegada");
        LocalDate data_partida = LocalDate.parse(request.getParameter("data_partida"));
        LocalTime hora_partida = LocalTime.parse(request.getParameter("hora_partida"));
        LocalTime duracao_voo = LocalTime.parse(request.getParameter("duracao_voo"));
        Integer numero_assentos = Integer.valueOf(request.getParameter("total_assentos"));
        double preco_voo = Double.parseDouble(request.getParameter("valor"));
        String origem = request.getParameter("origem");
        String destino = request.getParameter("destino");
        Integer desconto = Integer.valueOf(request.getParameter("desconto"));


        VooRepository.update(Voo.builder()
                .id_voo(vooSelecionado.getId_voo())
                .numero_voo(vooSelecionado.getNumero_voo())
                .companhia_aerea(companhia_aerea)
                .aeroporto_partida(aeroporto_partida)
                .aeroporto_chegada(aeroporto_chegada)
                .data_partida(data_partida)
                .hora_partida(hora_partida)
                .duracao_voo(duracao_voo)
                .numero_assentos(numero_assentos)
                .preco_voo(preco_voo)
                .origem(origem)
                .destino(destino)
                .desconto(desconto)
                .build());

        response.sendRedirect("voosadm");

    }
}
