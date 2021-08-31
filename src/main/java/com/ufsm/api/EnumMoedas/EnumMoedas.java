/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ufsm.api.EnumMoedas;

/**
 *
 * @author ronie
 */
public enum EnumMoedas {
    BITCOIN("BTC"), LITECOIN("LTC"), XRP("XRP") , CHILIZ("CHZ"), ETHEREUM("ETH"), COMPOUND("COMP");
    
    private String endPoint;

    private EnumMoedas(String endPoint) {
        this.endPoint  = endPoint;
    }

    public String getEndPoint() {
        return endPoint+"/ticker";
    }
}
