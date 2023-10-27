package com.br.agencia.agencia_viagem.model.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    public static Connection createConnectionMySql() {
        String url = "jdbc:mysql://localhost:3306/recode_ag_viagem";
        String username = "root";
        String password = "5316";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Banco de dados conectado" + url);
            return DriverManager.getConnection(url, username, password);


        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

}
