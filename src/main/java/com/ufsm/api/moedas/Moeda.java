/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ufsm.api.moedas;

import lombok.Getter;
import lombok.Setter;
import org.json.simple.JSONObject;

/**
 *
 * @author ronie
 */
@Getter
@Setter
public class Moeda {
    private double high;
    private double low;
    private double vol;
    private double last;
    private double buy;
    private double sell;
    private double open;
    private String date;
    
    public Moeda(JSONObject json){
        this.high = Double.parseDouble((String) json.get("high"));
        this.low = Double.parseDouble((String) json.get("low"));
        this.vol = Double.parseDouble((String) json.get("vol"));
        this.last = Double.parseDouble((String) json.get("last"));
        this.buy = Double.parseDouble((String) json.get("buy"));
        this.sell = Double.parseDouble((String) json.get("sell"));
        this.open = Double.parseDouble((String) json.get("open"));
        this.date = new java.text.SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new java.util.Date ((long) json.get("date")*1000));
    }
}
