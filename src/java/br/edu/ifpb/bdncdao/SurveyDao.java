/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncdao;

import br.edu.ifpb.bdncconection.Conexao;
import br.edu.ifpb.bdncdaoif.SurveyDaoIf;
import br.edu.ifpb.bdncentities.Survey;
import br.edu.ifpb.bdncentities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;

/**
 *
 * @author Zilderlan
 */
public class SurveyDao implements SurveyDaoIf {

    private Survey s;
    private Connection conn = null;
    private PreparedStatement stm = null;

    @Override
    public boolean pesquisaAdd(Survey s) {
        String sql = "INSERT INTO Enquete(email, title)"
                + " VALUES (?, ?)";
        try {
            conn = Conexao.conexao();
            stm = Conexao.openStatement(sql);
            stm.setString(1, s.getEmail());
            stm.setString(2, s.getTitle());
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
    public List<Survey> recuver(String nome) {
        List list = new ArrayList();
        String sql = "Select * from Enquete where title ilike ?";
        PreparedStatement pre;
        try {
            conn = Conexao.conexao();
            stm = conn.prepareStatement(sql);
            stm.setString(1, "%" + nome + "%");
            ResultSet result = stm.executeQuery();

            while (result.next()) {
                s = new Survey();
                s.setTitle(result.getString("title"));
                s.setEmail(result.getString("email"));
                s.setId(result.getInt("id"));

                list.add(s);
            }
        } catch (ClassNotFoundException | SQLException ex) {

        } finally {
            Conexao.closeStatement(stm);
            Conexao.closeConnection(conn);
        }
        return list;
    }

    @Override
    public List<Survey> recuver() {
        List list = new ArrayList();
        String sql = "Select * from Enquete";
        PreparedStatement pre;
        try {
            conn = Conexao.conexao();
            stm = conn.prepareStatement(sql);
            ResultSet result = stm.executeQuery();

            while (result.next()) {
                s = new Survey();
                s.setTitle(result.getString("title"));
                s.setEmail(result.getString("email"));
                list.add(s);
            }
        } catch (ClassNotFoundException | SQLException ex) {

        } finally {
            Conexao.closeStatement(stm);
            Conexao.closeConnection(conn);
        }
        return list;
    }

    @Override
    public Survey recuver(int id) {
        String sql = "SELECT * FROM Enquete WHERE id = ?";
        try {
            conn = Conexao.conexao();
            stm = Conexao.openStatement(sql);
            stm.setInt(1, id);
            ResultSet result = stm.executeQuery();
            if (result.next()) {
                s = new Survey();
                s.setTitle(result.getString("title"));
                s.setEmail(result.getString("email"));
                s.setId(result.getInt("id"));

            }
        } catch (ClassNotFoundException | SQLException ex) {
        } finally {
            Conexao.closeStatement(stm);
            Conexao.closeConnection(conn);
        }
        return s;

    }

    @Override
    public boolean respondeEnquete(String resp, String email, int id) {

        String sql = "INSERT INTO respondeenquete(iduser, idenquete, response)"
                + " VALUES (?, ?, ?)";
        try {
            conn = Conexao.conexao();
            stm = Conexao.openStatement(sql);
            stm.setString(1, email);
            stm.setInt(2, id);
            stm.setString(3, resp);
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
    public boolean verificarVoto(String email, int id) {
        String sql = "SELECT * FROM respondeenquete WHERE iduser = ? and idenquete = ?";
        try {
            conn = Conexao.conexao();
            stm = Conexao.openStatement(sql);
            stm.setString(1, email);
            stm.setInt(2, id);
            ResultSet result = stm.executeQuery();
            if (result.next()) {
                return true;
            }
        } catch (ClassNotFoundException | SQLException ex) {
        } finally {
            Conexao.closeStatement(stm);
            Conexao.closeConnection(conn);
        }
        return false;
    }
    
  

}
