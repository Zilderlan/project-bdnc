/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncentities;

/**
 *
 * @author Zilderlan
 */
public class RespostaEnquete {
    
    private int id;
    private String emailUser;
    private int idEnquete;
    private String resp;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmailUser() {
        return emailUser;
    }

    public void setEmailUser(String emailUser) {
        this.emailUser = emailUser;
    }

    public int getIdEnquete() {
        return idEnquete;
    }

    public void setIdEnquete(int idEnquete) {
        this.idEnquete = idEnquete;
    }

    public String getResp() {
        return resp;
    }

    public void setResp(String resp) {
        this.resp = resp;
    }

    @Override
    public String toString() {
        return "RespostaEnquete{" + "id=" + id + ", emailUser=" + emailUser + ", idEnquete=" + idEnquete + ", resp=" + resp + '}';
    }
    
    
    
}
