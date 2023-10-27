package com.br.agencia.agencia_viagem.model.repository;

import com.br.agencia.agencia_viagem.model.dominio.Passagem;
import com.br.agencia.agencia_viagem.model.dominio.Reserva;
import com.br.agencia.agencia_viagem.model.jdbc.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ReservaRepository {


    public static void save(Reserva reserva){

        try {
            try (Connection connection = Conexao.createConnectionMySql()) {
                try (PreparedStatement ps = createPreparedStatementSave(connection, reserva)) {
                    ps.execute();
                    System.out.println("Reserva realizada com sucesso!");
                }
            }
        } catch (SQLException e) {
            throw new Error("Erro ao salvar Reserva" + e);
        }


    }

    private static PreparedStatement createPreparedStatementSave(Connection connection, Reserva reserva)throws SQLException{
        String sql = "INSERT INTO `recode_ag_viagem`.`reservas` (`id_cliente`,`id_voo`, `numero_bilhete`)" +
                " VALUES (?, ?, ?);";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1,reserva.getId_voo());
        ps.setInt(2,reserva.getId_cliente());
        ps.setInt(3, reserva.getNumero_bilhete());
        return  ps;
    }


    public static List<Reserva> ListarReservas(){
        List<Reserva> reservas = new ArrayList<>();
        try {
            try (Connection connection = Conexao.createConnectionMySql()) {
                try (PreparedStatement ps = createPreparedStatementFindAll(connection)) {
                    try (ResultSet rs = ps.executeQuery()) {
                        while (rs.next()) {
                            Reserva reserva = Reserva.builder()
                                    .id_reserva(rs.getInt("id_reserva"))
                                    .id_cliente(rs.getInt("id_cliente"))
                                    .id_voo(rs.getInt("id_voo"))
                                    .numero_bilhete(rs.getInt("numero_bilhete"))
                                    .status(rs.getString("status"))
                                    .build();

                            reservas.add(reserva);
                        }

                    }
                }
            }
        } catch (SQLException e) {
            throw new Error("Lista na passagens nao encontrada" + e);
        }
        return reservas;
    }

    private static PreparedStatement createPreparedStatementFindAll(Connection connection)throws SQLException{
        String sql = "SELECT * FROM recode_ag_viagem.reservas;";
        PreparedStatement ps = connection.prepareStatement(sql);
        return  ps;
    }

    public static List<Reserva> listarReservasCliente(Integer id_cliente){
        List<Reserva> reservas = new ArrayList<>();
        try {
            try (Connection connection = Conexao.createConnectionMySql()) {
                try (PreparedStatement ps = createPreparedStatementFindAll(connection)) {
                    try (ResultSet rs = ps.executeQuery()) {
                        while (rs.next()) {
                            Reserva reserva = Reserva.builder()
                                    .id_reserva(rs.getInt("id_reserva"))
                                    .id_cliente(rs.getInt("id_cliente"))
                                    .id_voo(rs.getInt("id_voo"))
                                    .numero_bilhete(rs.getInt("numero_bilhete"))
                                    .status(rs.getString("status"))
                                    .build();

                            reservas.add(reserva);
                        }

                    }
                }
            }
        } catch (SQLException e) {
            throw new Error("Lista na passagens nao encontrada" + e);
        }
        return reservas;
    }

    private static PreparedStatement createPreparedStatementFindByCliente(Connection connection, Integer id_cliente)throws SQLException{
        String sql = "SELECT * FROM recode_ag_viagem.reservas where id_cliente = ?;";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1,id_cliente);
        return  ps;
    }

    public static void deletarReservaId(Integer id){

        try {
            try (Connection connection = Conexao.createConnectionMySql()) {
                try (PreparedStatement ps = createPreparedStatementDelete(connection, id)) {
                    ps.execute();
                    System.out.println("Reserva deletado com sucesso");
                }
            }
        } catch (SQLException e) {
            throw new Error("Erro ao deletar reserva" + e);
        }

    }

    private static PreparedStatement createPreparedStatementDelete(Connection connection, Integer id) throws SQLException{
        String sql = "DELETE FROM `recode_ag_viagem`.`reservas`  WHERE (`id_reserva` = ? );";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        return ps;
    }


    //caso especial :: inner join das tabelas reservas e voos

    public static List<Passagem> innerJoinReservaVoo(Integer id_cliente){
        List<Passagem> passagems = new ArrayList<>();
        try {
            try (Connection connection = Conexao.createConnectionMySql()) {
                try (PreparedStatement ps = createPreparedStatementInnerJoin(connection, id_cliente)) {
                    try (ResultSet rs = ps.executeQuery()) {
                        while (rs.next()) {
                            Passagem passagem = Passagem.builder()
                                    .id_reserva(rs.getInt("id_reserva"))
                                    .numero_bilhete(rs.getInt("numero_bilhete"))
                                    .companhia_aerea(rs.getString("companhia_aerea"))
                                    .aeroporto_partida(rs.getString("aeroporto_partida"))
                                    .aeroporto_chegada(rs.getString("aeroporto_chegada"))
                                    .data_partida(rs.getDate("data_partida").toLocalDate())
                                    .hora_partida(rs.getTime("hora_partida").toLocalTime())
                                    .duracao_voo(rs.getTime("duracao_voo").toLocalTime())
                                    .origem(rs.getString("origem"))
                                    .destino(rs.getString("destino"))
                                    .build();
                            passagems.add(passagem);
                        }

                    }
                }
            }
        } catch (SQLException e) {
            throw new Error("Lista na passagens nao encontrada" + e);
        }
        return passagems;
    }

    private static PreparedStatement createPreparedStatementInnerJoin(Connection connection, Integer id) throws SQLException{
        String sql = "SELECT * FROM recode_ag_viagem.reservas inner join voos where id_cliente = ?;";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        return ps;
    }

}
