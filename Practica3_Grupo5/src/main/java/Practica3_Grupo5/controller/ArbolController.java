/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Practica3_Grupo5.controller;

import Practica3_Grupo5.service.ArbolesService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author XPC
 */
@Controller
@Slf4j
@RequestMapping("/categoriaArboles")
public class ArbolController {

    @Autowired
    private ArbolesService arbolesService;

    @GetMapping("/listado")
    public String inicio(org.springframework.ui.Model model) {
        var categoriasA = arbolesService.getCategoriasArboles(false);
        model.addAttribute("categoriasA", categoriasA);
        model.addAttribute("totalCategorias", categoriasA.size());
        return "/categoria/listado";
    }
}
