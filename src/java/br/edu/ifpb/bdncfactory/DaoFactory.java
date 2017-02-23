/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncfactory;

import br.edu.ifpb.bdncdaoif.DaoFactoryIf;

/**
 *
 * @author Zilderlan
 */
public class DaoFactory {
    
    /**
     *
     * @return
     */
    public static DaoFactoryIf criateFactory (){
        return new DaoFactoryBD();
    }
    
}
