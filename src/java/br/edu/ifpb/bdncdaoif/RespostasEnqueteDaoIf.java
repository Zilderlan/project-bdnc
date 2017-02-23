/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncdaoif;

import br.edu.ifpb.bdncentities.RespostaEnquete;
import br.edu.ifpb.bdncentities.User;
import java.util.List;

/**
 *
 * @author Zilderlan
 */
public interface RespostasEnqueteDaoIf {
    
    public List<RespostaEnquete> respostas(int idEnquete);
    
    public List<RespostaEnquete> respostas(User u, int idEnquete);
    
    
}
