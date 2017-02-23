/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncmanager;

import br.edu.ifpb.bdncentities.User;
import br.edu.ifpb.bdncfactory.DaoFactory;

/**
 *
 * @author Zilderlan
 */
public class GerenciadorUser {
    
    public boolean userAdd(User user){
        return DaoFactory.criateFactory().criaUserDao().add(user);
    }
    
    public User returnUser (User user){
        return DaoFactory.criateFactory().criaUserDao().recuver(user);
    }
}
