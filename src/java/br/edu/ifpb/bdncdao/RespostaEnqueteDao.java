/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncdao;

import br.edu.ifpb.bdncconection.Conexao;
import br.edu.ifpb.bdncdaoif.RespostasEnqueteDaoIf;
import br.edu.ifpb.bdncentities.RespostaEnquete;
import br.edu.ifpb.bdncentities.Survey;
import br.edu.ifpb.bdncentities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Zilderlan
 */
public class RespostaEnqueteDao implements RespostasEnqueteDaoIf {

    RespostaEnquete re;
    private Connection conn = null;
    private PreparedStatement stm = null;

    @Override
    public List<RespostaEnquete> respostas(int idEnquete) {
        List list = new ArrayList();
        String sql = "Select * from RespondeEnquete where idEnquete = ?";
        PreparedStatement pre;
        try {
            conn = Conexao.conexao();
            stm = conn.prepareStatement(sql);
            stm.setInt(1, idEnquete);
            ResultSet result = stm.executeQuery();

            while (result.next()) {
                re = new RespostaEnquete();
                re.setEmailUser(result.getString("idUser"));
                re.setId(result.getInt("id"));
                re.setIdEnquete(result.getInt("idEnquete"));
                re.setResp(result.getString("response"));
                list.add(re);
            }
        } catch (ClassNotFoundException | SQLException ex) {

        } finally {
            Conexao.closeStatement(stm);
            Conexao.closeConnection(conn);
        }
        return list;
    }

    @Override
    public List<RespostaEnquete> respostas(User u, int idEnquete) {
        List list = new ArrayList();
        String sql = "select distinct * from usuario u, respondeenquete re, enquete e "
                + "where (u.scooling = ? and u.age = ? and u.rent = ? and sexo = ? "
                + "and (e.id =  re.idenquete and u.email = re.iduser)";
        PreparedStatement pre;
        try {
            conn = Conexao.conexao();
            stm = conn.prepareStatement(sql);
            stm.setString(1, u.getScooling());
            stm.setString(2, u.getAge());
            stm.setString(3, u.getRent());
            stm.setString(4, u.getSexo());
            ResultSet result = stm.executeQuery();

            while (result.next()) {
                re = new RespostaEnquete();
                re.setEmailUser(result.getString("idUser"));
                re.setId(result.getInt("id"));
                re.setIdEnquete(result.getInt("idEnquete"));
                re.setResp(result.getString("response"));
                list.add(re);
            }
        } catch (ClassNotFoundException | SQLException ex) {

        } finally {
            Conexao.closeStatement(stm);
            Conexao.closeConnection(conn);
        }
        return list;

    }

}
