/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncconection;

import br.edu.ifpb.bdncentities.RespostaEnquete;
import br.edu.ifpb.bdncentities.Survey;
import br.edu.ifpb.bdncentities.User;
import br.edu.ifpb.bdncmanager.GerenciadorEnquete;
import br.edu.ifpb.bdncmanager.GerenciadorRespostas;
import br.edu.ifpb.bdncmanager.GerenciadorUser;
import java.util.List;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 *
 * @author Zilderlan
 */
public class TestConexao {

    public static void main(String[] args) {

        User u = new User();
        u.setEmail("zilderlan.leite@gmail.com");
        u.setPassword("0000");
        u.setAge("age-19-25");
        u.setLang(1111111);
        u.setLat(00000);
        u.setRent("until-1");
        u.setScooling("medio");
        u.setSexo("M");
        
        GerenciadorUser g1 = new GerenciadorUser();
        
        RespostaEnquete re = new RespostaEnquete();
        GerenciadorRespostas ge = new GerenciadorRespostas();
//        re.setEmailUser("zilderlan.leite@gmail.com");
        
        
        List l = ge.respFiltro(u, 1);
        System.out.println(l.toString());
        
//        g1.userAdd(u);
//        User u1 = g.returnUser(u);
//        if (u1 == null) {
//            System.out.println("null 1");
//        } else {
//            System.out.println("not null");
//        }

//        Survey s = new Survey();
//        s.setEmail("zilderlan123@gmail.com");
//        s.setTitle("o que você acha...");
//        
//        GerenciadorEnquete ge = new GerenciadorEnquete();
//        //        ge.respondeEnquete("sim", "zilderlan123@gmail.com", 1);
//        boolean b = ge.verificarVoto("zilderlan123@gmail.com", 1);
//        if (b){
//            System.out.println("Votei");
//        }else{
//            System.out.println("não votei");
//        }

      
        
//ge.enqueteAdd(s);
                //        List<Survey> l = ge.pesquisa();
                //        List<Survey> l1 = ge.pesquisaNome(" ");
                ////        l.forEach(System.out::println);
                //        for(Survey su: l1){
                //        System.out.println(su);
                //        }
        
        
    }
}
