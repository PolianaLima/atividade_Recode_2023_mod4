package com.br.agencia.agencia_viagem.controller.voo;

import com.br.agencia.agencia_viagem.model.dominio.Voo;
import com.br.agencia.agencia_viagem.model.repository.VooRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet("/voosFiltrados")
public class ListarVoosFIltrosServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Voo> voos = new ArrayList<>();

        String origem = request.getParameter("origem");
        String destino = request.getParameter("destino");
       String data_partida = request.getParameter("data_partida");

        if(origem ==null && destino==null ){
           voos = VooRepository.listarVoos();
        }else{
            voos = VooRepository.listarVoosFiltro(origem, destino, LocalDate.parse(data_partida));
        }
        if(voos.size() ==0){
            request.setAttribute("erro", "Nenhum voo encontrado!!");
            request.getRequestDispatcher("error.jsp")
                    .forward(request, response);
        }


        request.setAttribute("listaVoosFiltros", voos);
        request.getRequestDispatcher("destino.jsp")
                .forward(request, response);
    }
}
