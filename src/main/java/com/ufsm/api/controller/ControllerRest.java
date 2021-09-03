package com.ufsm.api.controller;

import com.ufsm.api.EnumMoedas.EnumMoedas;
import com.ufsm.api.domain.model.CryptoMoedas;
import com.ufsm.api.domain.model.Users;
import com.ufsm.api.domain.repository.CryptoMoedasRepository;
import com.ufsm.api.domain.repository.UsersRepository;
import com.ufsm.api.moedas.Moeda;

import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@AllArgsConstructor
@RestController
@RequestMapping("/rest")
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

    @DeleteMapping("/moedas/{id}")
    public ResponseEntity<Object> deleteMoedasById(@PathVariable long id) {
        return cryptoMoedas.findById(id).map(record -> {cryptoMoedas.deleteById(id);
            return ResponseEntity.ok().build();
                }).orElse(ResponseEntity.notFound().build());
    }

    @PutMapping("/moedas/{id}")
    public ResponseEntity update(@PathVariable("id") long id,
                                 @RequestBody CryptoMoedas cm) {
        return cryptoMoedas.findById(id)
                .map(record -> {
                    record.setValor_coin(cm.getValor_coin());
                    CryptoMoedas updated = cryptoMoedas.save(record);
                    return ResponseEntity.ok().body(updated);
                }).orElse(ResponseEntity.notFound().build());
    }
    
    @GetMapping("/BTC")
    public Double getBitcoin() {
        return com.ufsm.api.moedas.MoedaFactory.infoMoeda(EnumMoedas.BITCOIN).getSell();
    }
    
    @GetMapping("/CHZ")
    public Double getChiliz() {
        return com.ufsm.api.moedas.MoedaFactory.infoMoeda(EnumMoedas.CHILIZ).getSell();
    }
    
    @GetMapping("/LTC")
    public Double getLitecoin() {
        return com.ufsm.api.moedas.MoedaFactory.infoMoeda(EnumMoedas.LITECOIN).getSell();
    }
    
    @GetMapping("/XRP")
    public Double getXRP() {
        return com.ufsm.api.moedas.MoedaFactory.infoMoeda(EnumMoedas.XRP).getSell();
    }
    
    @GetMapping("/ETH")
    public Double getEthereum() {
        return com.ufsm.api.moedas.MoedaFactory.infoMoeda(EnumMoedas.ETHEREUM).getSell();
    }
}
