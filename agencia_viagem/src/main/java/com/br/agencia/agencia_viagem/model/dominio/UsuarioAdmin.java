package com.br.agencia.agencia_viagem.model.dominio;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class UsuarioAdmin {
    private Integer id_usuario;
    private String usuario;
    private String senha;

}
