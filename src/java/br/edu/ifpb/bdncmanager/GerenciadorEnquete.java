/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncmanager;

import br.edu.ifpb.bdncentities.Survey;
import br.edu.ifpb.bdncfactory.DaoFactory;
import java.util.List;

/**
 *
 * @author Zilderlan
 */
public class GerenciadorEnquete {

    public boolean enqueteAdd(Survey s) {
        return DaoFactory.criateFactory().criaEnquete().pesquisaAdd(s);
    }

    public List<Survey> pesquisa() {
        return DaoFactory.criateFactory().criaEnquete().recuver();
    }

    public List<Survey> pesquisaNome(String s) {
        return DaoFactory.criateFactory().criaEnquete().recuver(s);
    }

    public Survey pesquisaId(int id) {
        return DaoFactory.criateFactory().criaEnquete().recuver(id);
    }

    public boolean respondeEnquete(String r, String s, int id) {
        return DaoFactory.criateFactory().criaEnquete().respondeEnquete(r, s, id);
    }

    public boolean verificarVoto(String idUser, int idEnquete) {
        return DaoFactory.criateFactory().criaEnquete().verificarVoto(idUser, idEnquete);
    }
}
