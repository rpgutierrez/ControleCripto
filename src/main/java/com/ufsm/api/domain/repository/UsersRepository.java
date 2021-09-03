/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ufsm.api.domain.repository;

import com.ufsm.api.domain.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ronie
 */
@Repository
public interface UsersRepository extends JpaRepository<Users, Long>{
    
}
