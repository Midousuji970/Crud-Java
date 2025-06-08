package com.tacio.backend.service;

import org.springframework.stereotype.Service;

@Service
public class CarroService {
    public String carros(String modelo){
        return "Modelo do Carro " + modelo;
    }
}
