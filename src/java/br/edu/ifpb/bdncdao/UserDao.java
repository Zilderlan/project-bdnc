/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncdao;

import br.edu.ifpb.bdncconection.Conexao;
import br.edu.ifpb.bdncdaoif.UserDaoIf;
import br.edu.ifpb.bdncentities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Zilderlan
 */
public class UserDao implements UserDaoIf {

    private User user;
    private Connection conn = null;
    private PreparedStatement stm = null;

    @Override
    public boolean add(User user) {
        String sql = "INSERT INTO USUARIO(email, password, scooling, age, rent, lat, longi, sexo)"
                + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        System.out.println(user);
        try {
            conn = Conexao.conexao();
            stm = Conexao.openStatement(sql);
            stm.setString(1, user.getEmail());
            stm.setString(2, user.getPassword());
            stm.setString(3, user.getScooling());
            stm.setString(4, user.getAge());
            stm.setString(5, user.getRent());
            stm.setDouble(6, user.getLat());
            stm.setDouble(7, user.getLang());
            stm.setString(8, user.getSexo());
            stm.executeUpdate();
            return true;
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        } finally {
            Conexao.closeStatement(stm);
            Conexao.closeConnection(conn);
        }
        return false;
    }

    @Override
    public User recuver(User userRecuver) {
        String sql = "SELECT * FROM Usuario WHERE email = ?";
        try {
            conn = Conexao.conexao();
            stm = Conexao.openStatement(sql);
            stm.setString(1, userRecuver.getEmail());
            System.out.println(userRecuver.getEmail());
            ResultSet result = stm.executeQuery();
            if (result.next()) {
                user = new User();

                user.setEmail(result.getString("email"));
                user.setPassword(result.getString("password"));

            }
        } catch (ClassNotFoundException | SQLException ex) {
        } finally {
            Conexao.closeStatement(stm);
            Conexao.closeConnection(conn);
        }
        System.out.println(user);
        return user;
    }
 
 

    @Override
    public User Login(User user) {
        User userLogin = null;
        String sql = "Select * from Usuario where  email = ? and senha = ?";
        String s;
                try {
            conn = Conexao.conexao();
            stm = conn.prepareStatement(sql);
            stm.setString(1, user.getEmail());
            stm.setString(2, user.getPassword());
//        stm.setString(2, password);
//        stm.setString(3, user.getSenha());
            ResultSet result = stm.executeQuery();
            if (result.next()) {
                userLogin = new User();
                userLogin.setEmail(result.getString("email"));
                userLogin.setPassword(result.getString("password"));

            }
        } catch (SQLException | ClassNotFoundException ex) {
            
        }

        return userLogin;
    }

}
