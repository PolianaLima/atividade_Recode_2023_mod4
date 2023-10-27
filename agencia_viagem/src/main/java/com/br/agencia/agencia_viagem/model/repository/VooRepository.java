package com.br.agencia.agencia_viagem.model.repository;

import com.br.agencia.agencia_viagem.model.dominio.Voo;
import com.br.agencia.agencia_viagem.model.jdbc.Conexao;

import java.sql.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class VooRepository {

    public static void save(Voo voo){
        try (Connection connection = Conexao.createConnectionMySql();
             PreparedStatement ps = createPreparedStatementSave(connection, voo)) {
            ps.execute();
            System.out.println("Voo "+ voo.getNumero_voo()+" salvo com sucesso." );
        } catch (SQLException e) {
            throw new Error("Erro ao salvar voo no banco de dados" + voo.getNumero_voo(), e);
        }

    }

    private static PreparedStatement createPreparedStatementSave(Connection connection, Voo voo)throws SQLException{
        String sql = "INSERT INTO `recode_ag_viagem`.`voos` (`numero_voo`, `companhia_aerea`, `aeroporto_partida`, `aeroporto_chegada`, `data_partida`,`hora_partida`,`duracao_voo`,`numero_assentos`,`preco_voo`,`origem`,`destino`, `desconto`) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?);";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, voo.getNumero_voo());
        ps.setString(2, voo.getCompanhia_aerea());
        ps.setString(3, voo.getAeroporto_partida());
        ps.setString(4, voo.getAeroporto_chegada());
        ps.setDate(5, Date.valueOf(voo.getData_partida()));
        ps.setTime(6, Time.valueOf(voo.getHora_partida()));
        ps.setTime(7, Time.valueOf(voo.getDuracao_voo()));
        ps.setInt(8,voo.getNumero_assentos());
        ps.setDouble(9, voo.getPreco_voo());
        ps.setString(10, voo.getOrigem());
        ps.setString(11, voo.getDestino());
        ps.setInt(12, voo.getDesconto());

        return ps;
    }


    public static void update(Voo voo){
        try (Connection connection = Conexao.createConnectionMySql();
             PreparedStatement ps = createPreparedStatementUpdate(connection, voo)) {
            ps.execute();
            System.out.println("Voo alterado com sucesso " + voo.getNumero_voo());
        } catch (SQLException e) {
            throw new Error("Erro ao alterar o voo no banco de dados " + voo.getNumero_voo(), e);
        }

    }

    private static PreparedStatement createPreparedStatementUpdate(Connection connection, Voo voo)throws SQLException{
        String sql = "UPDATE `recode_ag_viagem`.`voos` SET `numero_voo` = ?, `companhia_aerea` = ?, `aeroporto_partida` = ?, `aeroporto_chegada` = ?, `data_partida` = ?, `hora_partida` = ?, `duracao_voo` = ?, `numero_assentos` = ?, `preco_voo` = ?, `origem` = ?, `destino` = ?,`desconto` = ? WHERE (`id_voo` = ?);";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, voo.getNumero_voo());
        ps.setString(2, voo.getCompanhia_aerea());
        ps.setString(3, voo.getAeroporto_partida());
        ps.setString(4, voo.getAeroporto_chegada());
        ps.setDate(5, Date.valueOf(voo.getData_partida()));
        ps.setTime(6, Time.valueOf(voo.getHora_partida()));
        ps.setTime(7, Time.valueOf(voo.getDuracao_voo()));
        ps.setInt(8,voo.getNumero_assentos());
        ps.setDouble(9, voo.getPreco_voo());
        ps.setString(10, voo.getOrigem());
        ps.setString(11, voo.getDestino());
        ps.setInt(12, voo.getDesconto());
        ps.setInt(13, voo.getId_voo());

        return ps;
    }
    public static List<Voo> listarVoos() {
        List<Voo> voos = new ArrayList<>();
        try {
            try (Connection connection = Conexao.createConnectionMySql();
                 PreparedStatement ps = createPreparedStatementListarTodos(connection);
                 ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Voo voo = Voo.builder()
                            .id_voo(rs.getInt("id_voo"))
                            .numero_voo(rs.getInt("numero_voo"))
                            .companhia_aerea(rs.getString("companhia_aerea"))
                            .aeroporto_partida(rs.getString("aeroporto_partida"))
                            .aeroporto_chegada(rs.getString("aeroporto_chegada"))
                            .data_partida(LocalDate.parse(rs.getDate("data_partida").toLocalDate().format(DateTimeFormatter.ISO_LOCAL_DATE)))
                            .hora_partida(rs.getTime("hora_partida").toLocalTime())
                            .duracao_voo(rs.getTime("duracao_voo").toLocalTime())
                            .numero_assentos(rs.getInt("numero_assentos"))
                            .preco_voo(rs.getDouble("preco_voo"))
                            .origem(rs.getString("origem"))
                            .destino(rs.getString("destino"))
                            .desconto(rs.getInt("desconto"))
                            .build();

                    voos.add(voo);
                }

            }
        } catch (SQLException e) {
            throw new Error("Lista na passagens nao encontrada" + e);
        }
        return voos;
    }


    private static PreparedStatement createPreparedStatementListarTodos(Connection connection) throws SQLException {
        String sql = "SELECT * FROM recode_ag_viagem.voos;";
        PreparedStatement ps = connection.prepareStatement(sql);
        return ps;
    }

    public static List<Voo> listarVoosFiltro(String origem, String destino, LocalDate dataPartida) {
        List<Voo> voos = new ArrayList<>();
        try {
            try (Connection connection = Conexao.createConnectionMySql();
                 PreparedStatement ps = createPreparedStatementFiltro(connection, origem, destino, dataPartida);
                 ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Voo voo = Voo.builder()
                            .id_voo(rs.getInt("id_voo"))
                            .numero_voo(rs.getInt("numero_voo"))
                            .companhia_aerea(rs.getString("companhia_aerea"))
                            .aeroporto_partida(rs.getString("aeroporto_partida"))
                            .aeroporto_chegada(rs.getString("aeroporto_chegada"))
                            .data_partida(LocalDate.parse(rs.getDate("data_partida").toLocalDate().format(DateTimeFormatter.ISO_LOCAL_DATE)))
                            .hora_partida(rs.getTime("hora_partida").toLocalTime())
                            .duracao_voo(rs.getTime("duracao_voo").toLocalTime())
                            .numero_assentos(rs.getInt("numero_assentos"))
                            .preco_voo(rs.getDouble("preco_voo"))
                            .origem(rs.getString("origem"))
                            .destino(rs.getString("destino"))
                            .desconto(rs.getInt("desconto"))
                            .build();

                    voos.add(voo);
                }

            }
        } catch (SQLException e) {
            throw new Error("Lista na passagens nao encontrada" + e);
        }
        return voos;
    }


    private static PreparedStatement createPreparedStatementFiltro(Connection connection, String origem, String destino, LocalDate dataPartida) throws SQLException {
        String sql = "SELECT * FROM recode_ag_viagem.voos where origem like ? and destino like ? and data_partida=?;";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, String.format("%%%s%%", origem));
        ps.setString(2, String.format("%%%s%%", destino));
        ps.setDate(3, Date.valueOf(dataPartida));
        return ps;
    }


    public static Voo listarVooById(Integer id) {
        Voo voo = new Voo();
        try {
            try (Connection connection = Conexao.createConnectionMySql();
                 PreparedStatement ps = createPreparedStatementFiltro(connection, id);
                 ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    voo = Voo.builder()
                            .id_voo(rs.getInt("id_voo"))
                            .numero_voo(rs.getInt("numero_voo"))
                            .companhia_aerea(rs.getString("companhia_aerea"))
                            .aeroporto_partida(rs.getString("aeroporto_partida"))
                            .aeroporto_chegada(rs.getString("aeroporto_chegada"))
                            .data_partida(LocalDate.parse(rs.getDate("data_partida").toLocalDate().format(DateTimeFormatter.ISO_LOCAL_DATE)))
                            .hora_partida(rs.getTime("hora_partida").toLocalTime())
                            .duracao_voo(rs.getTime("duracao_voo").toLocalTime())
                            .numero_assentos(rs.getInt("numero_assentos"))
                            .preco_voo(rs.getDouble("preco_voo"))
                            .origem(rs.getString("origem"))
                            .destino(rs.getString("destino"))
                            .desconto(rs.getInt("desconto"))
                            .build();
                }

            }
        } catch (SQLException e) {
            throw new Error("Lista na passagens nao encontrada" + e);
        }
        return voo;
    }


    private static PreparedStatement createPreparedStatementFiltro(Connection connection, Integer id) throws SQLException {
        String sql = "SELECT * FROM recode_ag_viagem.voos where id_voo =  ?;";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        return ps;
    }


    public static void  delete(Integer id){
        try {
            try (Connection connection = Conexao.createConnectionMySql()) {
                try (PreparedStatement ps = createPreparedStatementDelete(connection, id)) {
                    ps.execute();
                    System.out.println("Voo deletado com sucesso");
                }
            }
        } catch (SQLException e) {
            throw new Error("Erro ao deletar voo" + e);
        }
    }

    private static PreparedStatement createPreparedStatementDelete(Connection connection, Integer id)throws  SQLException{
        String sql = "DELETE FROM `recode_ag_viagem`.`voos` WHERE (`id_voo` = ?);";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1,id);
        return ps;
    }


}

















