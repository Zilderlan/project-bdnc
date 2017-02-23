/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncmanager;

import br.edu.ifpb.bdncdaoif.DaoFactoryIf;
import br.edu.ifpb.bdncentities.RespostaEnquete;
import br.edu.ifpb.bdncentities.User;
import br.edu.ifpb.bdncfactory.DaoFactory;
import java.util.List;

/**
 *
 * @author Zilderlan
 */
public class GerenciadorRespostas {
    
    public List<RespostaEnquete> respostas(int id){
        return DaoFactory.criateFactory().criarRespostaEnquete().respostas(id);
    }
    
    public List<RespostaEnquete> respFiltro(User u, int idEnquete){
        return DaoFactory.criateFactory().criarRespostaEnquete().respostas(u, idEnquete);
    }
    
}
