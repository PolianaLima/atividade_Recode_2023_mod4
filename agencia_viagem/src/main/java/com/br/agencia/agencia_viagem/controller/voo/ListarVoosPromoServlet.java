package com.br.agencia.agencia_viagem.controller.voo;

import com.br.agencia.agencia_viagem.model.dominio.Voo;
import com.br.agencia.agencia_viagem.model.repository.VooRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/voospromocao")
public class ListarVoosPromoServlet  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Voo> voos = VooRepository.listarVoos();
        List <Voo> voosPromocao;

        voosPromocao = voos.stream().filter(voo -> voo.getDesconto() != 0).collect(Collectors.toList());

        if(!voosPromocao.isEmpty()){
            request.setAttribute("listaVoosPromocao", voosPromocao);
            request.getRequestDispatcher("promocoes.jsp")
                    .forward(request, response);
        }else {
            response.sendRedirect("erroPaginaPromo.jsp");
        }



    }
}
