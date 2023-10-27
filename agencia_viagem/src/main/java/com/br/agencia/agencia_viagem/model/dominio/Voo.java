package com.br.agencia.agencia_viagem.model.dominio;

import lombok.*;

import java.time.LocalDate;
import java.time.LocalTime;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@ToString
public class Voo {
    private Integer id_voo;
    private Integer numero_voo;
    private String companhia_aerea;
    private String aeroporto_partida;
    private String aeroporto_chegada;
    private LocalDate data_partida;
    private LocalTime hora_partida;
    private LocalTime duracao_voo;
    private Integer numero_assentos;
    private double preco_voo;
    private String origem;
    private String destino;
    private Integer desconto;
}
