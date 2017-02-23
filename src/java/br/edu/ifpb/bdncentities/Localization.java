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
public class Localization {
    
    private int id;
    private float latitude;
    private float longitude;
    private String description;
    
    public Localization(){}

    public Localization(float latitude, float longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public float getLatitude() {
        return latitude;
    }

    public void setLatitude(float latitude) {
        this.latitude = latitude;
    }

    public float getLongitude() {
        return longitude;
    }

    public void setLongitude(float longitude) {
        this.longitude = longitude;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Localization{" + "latitude=" + latitude + ", longitude=" + longitude + '}';
    }
    
    
    
}
