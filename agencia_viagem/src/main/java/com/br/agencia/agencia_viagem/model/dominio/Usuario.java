package com.br.agencia.agencia_viagem.model.dominio;

import lombok.*;

import java.time.LocalDate;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Usuario {
    private Integer id_Cliente;
    private String cpf;
    private String nome;
    private String sobrenome;
    private LocalDate data_nascimento;
    private String genero;
    private String cep;
    private String estado;
    private String cidade;
    private String endereco;
    private Integer numero;
    private String complemento;
    private String email;
    private String senha;

}
