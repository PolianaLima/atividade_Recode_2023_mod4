package com.br.agencia.agencia_viagem.model.repository;

import com.br.agencia.agencia_viagem.model.dominio.Usuario;
import com.br.agencia.agencia_viagem.model.jdbc.Conexao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class UsuarioRepository {


    public static void save(Usuario usuario) {

        try (Connection connection = Conexao.createConnectionMySql();
             PreparedStatement ps = createPrepareStatementcreateSave(connection, usuario)) {
            ps.execute();
            System.out.println("Cliente salvo com sucesso! ");
        } catch (SQLException e) {
            throw new Error("Erro ao salvar cliente no banco de dados", e);
        }


    }

    private static PreparedStatement createPrepareStatementcreateSave(Connection connection, Usuario usuario) throws SQLException {
        String sql = "INSERT INTO `recode_ag_viagem`.`clientes` (`cpf`, `nome`, `Sobrenome`, `data_nascimento`, " +
                "`genero`, `cep`, `estado`, `cidade`, `endereco`, `numero`, `complemento`,`email`, `senha`) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, usuario.getCpf());
        ps.setString(2, usuario.getNome());
        ps.setString(3, usuario.getSobrenome());
        ps.setDate(4, Date.valueOf(usuario.getData_nascimento()));
        ps.setString(5, usuario.getGenero());
        ps.setString(6, usuario.getCep());
        ps.setString(7, usuario.getEstado());
        ps.setString(8, usuario.getCidade());
        ps.setString(9, usuario.getEndereco());
        ps.setInt(10, usuario.getNumero());
        ps.setString(11, usuario.getComplemento());
        ps.setString(12, usuario.getEmail());
        ps.setString(13, usuario.getSenha());

        return ps;
    }

    public static Usuario findById(Integer id) {
        Usuario usuario = new Usuario();
        try {
            try (Connection connection = Conexao.createConnectionMySql()) {
                try (PreparedStatement ps = createPrepareStatementFindById(connection, id)) {
                    try (ResultSet rs = ps.executeQuery()) {
                        if (!rs.next()) return usuario;

                        return Usuario.builder()
                                .id_Cliente(rs.getInt("id_cliente"))
                                .cpf(rs.getString("cpf"))
                                .nome(rs.getNString("nome"))
                                .sobrenome(rs.getString("sobrenome"))
                                .data_nascimento(rs.getDate("data_nascimento").toLocalDate())
                                .genero(rs.getString("genero"))
                                .cep(rs.getString("cep"))
                                .estado(rs.getString("estado"))
                                .cidade(rs.getString("cidade"))
                                .endereco(rs.getString("endereco"))
                                .numero(rs.getInt("numero"))
                                .complemento(rs.getString("complemento"))
                                .email(rs.getString("email"))
                                .senha(rs.getString("senha"))
                                .build();

                    }
                }
            }
        } catch (SQLException e) {
            throw new Error("Erro ao buscar cliente no banco de dados" + id, e);
        }
    }

    private static PreparedStatement createPrepareStatementFindById(Connection connection, Integer id) throws SQLException {
        String sql = "SELECT * FROM recode_ag_viagem.clientes WHERE id_cliente = ?;";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        return ps;
    }


    public static Usuario findByEmail(String email) {
        Usuario usuario = new Usuario();
        try {
            try (Connection connection = Conexao.createConnectionMySql()) {
                try (PreparedStatement ps = createPrepareStatementFindByEmail(connection, email)) {
                    try (ResultSet rs = ps.executeQuery()) {
                        if (!rs.next()) return usuario;

                        return Usuario.builder()
                                .id_Cliente(rs.getInt("id_cliente"))
                                .cpf(rs.getString("cpf"))
                                .nome(rs.getNString("nome"))
                                .sobrenome(rs.getString("sobrenome"))
                                .data_nascimento(rs.getDate("data_nascimento").toLocalDate())
                                .genero(rs.getString("genero"))
                                .cep(rs.getString("cep"))
                                .estado(rs.getString("estado"))
                                .cidade(rs.getString("cidade"))
                                .endereco(rs.getString("endereco"))
                                .numero(rs.getInt("numero"))
                                .complemento(rs.getString("complemento"))
                                .email(rs.getString("email"))
                                .senha(rs.getString("senha"))
                                .build();

                    }
                }
            }
        } catch (SQLException e) {
            throw new Error("Erro ao buscar cliente no banco de dados" + email, e);
        }
    }

    private static PreparedStatement createPrepareStatementFindByEmail(Connection connection, String email) throws SQLException {
        String sql = "SELECT * FROM recode_ag_viagem.clientes WHERE email = ?;";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, email);
        return ps;
    }

    public static void update(Usuario usuario) {
        try (Connection connection = Conexao.createConnectionMySql();
             PreparedStatement ps = createPreparedStatementUpdate(connection, usuario)) {
            ps.execute();
            System.out.println("Cliente alterado com sucesso " + usuario.getNome());
        } catch (SQLException e) {
            throw new Error("Erro ao alterar cliente no banco de dados" + usuario.getId_Cliente(), e);
        }
    }

    private static PreparedStatement createPreparedStatementUpdate(Connection connection, Usuario usuario) throws SQLException {

        String sql = "UPDATE `recode_ag_viagem`.`clientes` SET `cpf` = ?, `nome` = ?, `Sobrenome` = ?," +
                "`data_nascimento` = ?, `genero` = ?, `cep` = ?, `estado` = ?, `cidade` = ?, `endereco` = ?, `numero` = ?, " +
                "`complemento` = ?" +
                " WHERE (`id_cliente` = ?);";

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, usuario.getCpf());
        ps.setString(2, usuario.getNome());
        ps.setString(3, usuario.getSobrenome());
        ps.setDate(4, Date.valueOf(usuario.getData_nascimento()));
        ps.setString(5, usuario.getGenero());
        ps.setString(6, usuario.getCep());
        ps.setString(7, usuario.getEstado());
        ps.setString(8, usuario.getCidade());
        ps.setString(9, usuario.getEndereco());
        ps.setInt(10, usuario.getNumero());
        ps.setString(11, usuario.getComplemento());

        ps.setInt(12, usuario.getId_Cliente());

        return ps;

    }



    public static void delete(Integer id) {
        try {
            Connection connection = Conexao.createConnectionMySql();
            try {
                PreparedStatement ps = createPreparedStatementDelete(connection, id);
                try {
                    ps.execute();
                    System.out.println("Cliente deletado com sucesso");
                } finally {
                    ps.close();
                }
            } finally {
                connection.close();
            }
        } catch (SQLException e) {
            throw new Error("Erro ao excluir cliente" + e);
        }
    }

    private static PreparedStatement createPreparedStatementDelete(Connection connection, Integer id) throws SQLException {
        String sql = "DELETE FROM `recode_ag_viagem`.`clientes` WHERE (`id_cliente` = ?);";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);

        return ps;
    }


}
