/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncfactory;

import br.edu.ifpb.bdncdao.RespostaEnqueteDao;
import br.edu.ifpb.bdncdao.SurveyDao;
import br.edu.ifpb.bdncdao.UserDao;
import br.edu.ifpb.bdncdaoif.DaoFactoryIf;
import br.edu.ifpb.bdncdaoif.LocalizationDaoIf;
import br.edu.ifpb.bdncdaoif.RespostasEnqueteDaoIf;
import br.edu.ifpb.bdncdaoif.SurveyDaoIf;
import br.edu.ifpb.bdncdaoif.UserDaoIf;
import br.edu.ifpb.bdncentities.RespostaEnquete;

/**
 *
 * @author Zilderlan
 */
public class DaoFactoryBD implements DaoFactoryIf{

    @Override
    public UserDaoIf criaUserDao() {
        return new UserDao();
    }

    @Override
    public LocalizationDaoIf criaLocalizationDao() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public SurveyDaoIf criaEnquete() {
        return new SurveyDao();
    }

    @Override
    public RespostasEnqueteDaoIf criarRespostaEnquete() {
        return new RespostaEnqueteDao();
    }
    
    
    
}
