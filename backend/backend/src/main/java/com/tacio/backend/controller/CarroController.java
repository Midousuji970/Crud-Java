package com.tacio.backend.controller;

import com.tacio.backend.domain.ModeloCarro;
import com.tacio.backend.service.CarroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/carros")
public class CarroController {

    @Autowired
    private CarroService carroService;

    @GetMapping
    public String Carro(@RequestBody ModeloCarro modelo){
        return carroService.carros(modelo.getModelo());
    }
}
