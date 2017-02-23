/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncentities;

/**
 *
 * @author Zilderlan
 */
public class User {
    private Localization loc;
    private String email;
    private String password;
    private String scooling;
    private String age;
    private String rent;
    private double lat;
    private double lang;
    private String sexo;
    
    
    

    public double getLat() {
        return lat;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public double getLang() {
        return lang;
    }

    public void setLang(double lang) {
        this.lang = lang;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

     public String getScooling() {
        return scooling;
    }

    public void setScooling(String scooling) {
        this.scooling = scooling;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getRent() {
        return rent;
    }

    public void setRent(String rent) {
        this.rent = rent;
    }

    @Override
    public String toString() {
        return "User{" + "loc=" + loc + ", email=" + email + ", password=" + password + ", scooling=" + scooling + ", age=" + age + ", rent=" + rent + ", lat=" + lat + ", lang=" + lang + '}';
    }
    
    
    
}
