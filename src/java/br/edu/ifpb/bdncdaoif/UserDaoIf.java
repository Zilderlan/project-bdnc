/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncdaoif;

import br.edu.ifpb.bdncentities.User;

/**
 *
 * @author Zilderlan
 */
public interface UserDaoIf {
    
    public boolean add(User user);
    
    public User recuver(User user);
    
    public User Login(User user);
    
}
