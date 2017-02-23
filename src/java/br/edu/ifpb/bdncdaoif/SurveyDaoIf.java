/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncdaoif;

import br.edu.ifpb.bdncentities.Survey;
import br.edu.ifpb.bdncentities.User;
import java.util.List;

/**
 *
 * @author Zilderlan
 */
public interface SurveyDaoIf {
    
    public boolean pesquisaAdd(Survey s);
    
    public List<Survey> recuver();
    
    public List<Survey> recuver(String name);
    
    public Survey recuver(int id);
    
    public boolean respondeEnquete(String s, String s1, int id);
    
    public boolean verificarVoto(String idUser, int idEnquete);
    
}
