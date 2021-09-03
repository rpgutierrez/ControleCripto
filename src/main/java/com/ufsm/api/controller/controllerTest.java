package com.ufsm.api.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import com.ufsm.api.EnumMoedas.EnumMoedas;
import com.ufsm.api.domain.model.CryptoMoedas;
import com.ufsm.api.domain.model.Users;
import com.ufsm.api.domain.repository.CryptoMoedasRepository;
import com.ufsm.api.moedas.Moeda;
import com.ufsm.api.moedas.MoedaFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class controllerTest {

    private CryptoMoedasRepository cryptoMoedas;

    public controllerTest(CryptoMoedasRepository cryptoMoedas) {
        this.cryptoMoedas = cryptoMoedas;
    }


    @GetMapping("/moedas/mostra")
    public String listMoedas(Model model) {
        List<CryptoMoedas> moedas = cryptoMoedas.findAll();
        for(CryptoMoedas moeda:moedas){
            MoedaFactory.infoMoeda(EnumMoedas.valueOf(moeda.getNome_coin().toUpperCase(Locale.ROOT)));
        }

        model.addAttribute("moedas", cryptoMoedas.findAll());
        return "/index";
    }

    @GetMapping("/moedas/cadastro")
    public String CadastroMoedas(Model model) {
        CryptoMoedas cm = new CryptoMoedas();
        model.addAttribute("CryptoMoedas", cm);
        List<String> moedasList = Arrays.asList("Bitcoin", "Litecoin", "XRP", "Ethereum", "Chiliz");
        model.addAttribute("moedasList", moedasList);
        return "/cadastrarMoeda";
    }

    @PostMapping("/moedas/cadastro")
    @ResponseStatus(HttpStatus.CREATED)
    public String criarMoeda(@ModelAttribute("cm") CryptoMoedas cm) {
        cryptoMoedas.save(cm);

        return "redirect:/mostra";
    }

    @GetMapping("/deletarOrdem/{id}")
    public String deletarOrdem(@PathVariable() long id){
        cryptoMoedas.deleteById(id);
        return "redirect:/moedas/mostra";
    }



}