/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncdaoif;

import br.edu.ifpb.bdncentities.RespostaEnquete;

/**
 *
 * @author Zilderlan
 */
public interface DaoFactoryIf {
    
    public UserDaoIf criaUserDao();
    
    public SurveyDaoIf criaEnquete();
    
    public RespostasEnqueteDaoIf criarRespostaEnquete();
    public LocalizationDaoIf criaLocalizationDao();
}
