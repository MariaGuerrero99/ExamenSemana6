/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Cinelitas.Cinelitas.service;

import Cinelitas.Cinelitas.entity.Sala;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import Cinelitas.Cinelitas.repository.SalaRepository;

/**
 *
 * @author Personal
 */
@Service
public class SalaService implements ISalaService{
    
    @Autowired
    private SalaRepository salaRepository;
    
    @Override
    public List<Sala> listSala() {
        return (List<Sala>) salaRepository.findAll();
    }
}
