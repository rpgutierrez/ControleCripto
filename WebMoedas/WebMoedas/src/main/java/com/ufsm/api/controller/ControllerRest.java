package com.ufsm.api.controller;

import com.ufsm.api.EnumMoedas.EnumMoedas;
import com.ufsm.api.domain.model.CryptoMoedas;
import com.ufsm.api.domain.model.Users;
import com.ufsm.api.domain.repository.CryptoMoedasRepository;
import com.ufsm.api.domain.repository.UsersRepository;
import com.ufsm.api.moedas.Moeda;
import com.ufsm.api.moedas.MoedaFactory;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@AllArgsConstructor
@RestController
public class ControllerRest {
    
    private UsersRepository users;
    private CryptoMoedasRepository cryptoMoedas;
    
    @GetMapping("/users")
    public List<Users> listUsers() {
        return users.findAll();
    }
    
    @GetMapping("/users/{id}")
    public ResponseEntity<Users> listUsersById(@PathVariable Long id) {
        return users.findById(id).map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping("/users/register")
    @ResponseStatus(HttpStatus.CREATED)
    public Users criarUser(@RequestBody Users user){
        return users.save(user);
    }
    
    @GetMapping("/moedas")
    public List<CryptoMoedas> listMoedas() {
        return cryptoMoedas.findAll();
    }
    
    @GetMapping("/moedas/{id}")
    public ResponseEntity<CryptoMoedas> listMoedasById(@PathVariable Long id) {
        return cryptoMoedas.findById(id).map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping("/moedas/register")
    @ResponseStatus(HttpStatus.CREATED)
    public CryptoMoedas criarMoeda(@RequestBody CryptoMoedas cm){
        return cryptoMoedas.save(cm);
    }
    
    @GetMapping("/BTC")
    public Moeda getBitcoin() {
        return MoedaFactory.infoMoeda(EnumMoedas.BITCOIN);
    }
    
    @GetMapping("/CHZ")
    public Moeda getChiliz() {
        return MoedaFactory.infoMoeda(EnumMoedas.CHILIZ);
    }
    
    @GetMapping("/LTC")
    public Moeda getLitecoin() {
        return MoedaFactory.infoMoeda(EnumMoedas.LITECOIN);
    }
    
    @GetMapping("/XRP")
    public Double getXRP() {
        return MoedaFactory.infoMoeda(EnumMoedas.XRP).getHigh();
    }
    
    @GetMapping("/ETH")
    public Moeda getEthereum() {
        return MoedaFactory.infoMoeda(EnumMoedas.ETHEREUM);
    }
}
