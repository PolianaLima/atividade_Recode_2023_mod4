package com.br.agencia.agencia_viagem.model.dominio;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Reserva {
    private Integer id_reserva;
    private Integer id_cliente;
    private Integer id_voo;
    private Integer numero_bilhete;
    private String status;
}
