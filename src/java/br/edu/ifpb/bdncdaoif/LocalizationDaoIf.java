/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncdaoif;

import br.edu.ifpb.bdncentities.Localization;

/**
 *
 * @author Zilderlan
 */
public interface LocalizationDaoIf {
    
    public boolean add(Localization localization);
    
    public Localization recovery(int id);
    
}
