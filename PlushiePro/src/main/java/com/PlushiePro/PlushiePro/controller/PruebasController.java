/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.PlushiePro.PlushiePro.controller;

import com.PlushiePro.PlushiePro.domain.Categoria;
import com.PlushiePro.PlushiePro.service.CategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.PlushiePro.PlushiePro.service.ProductoService;
import java.util.HashSet;
import java.util.Set;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/pruebas")
public class PruebasController {

    @Autowired
    private ProductoService productoService;
    
    @Autowired
    private CategoriaService categoriaService;

    @GetMapping("/listado")
    public String listado(Model model) {
        var productos = productoService.getProductos(false);
        var categorias = categoriaService.getCategorias(false);
        // Extraer tipos únicos de categorías
        Set<String> tiposCategorias = new HashSet<>();
        for (Categoria categoria : categorias) {
            tiposCategorias.add(categoria.getTipo());
        }
        model.addAttribute("productos", productos);
        model.addAttribute("totalProductos", productos.size());
        model.addAttribute("categorias", categorias);
        model.addAttribute("tiposCategorias", tiposCategorias);
        return "/pruebas/listado";
    }
    
    @GetMapping("/listado/{tipo}")
    public String listado(Model model, @PathVariable String tipo) {
        var categoria = categoriaService.getCategoriaByTipo(tipo);
        if (categoria != null) {
            var productos = categoria.getProductos();
            var categorias = categoriaService.getCategorias(false);
            Set<String> tiposCategorias = new HashSet<>();
            for (Categoria cat : categorias) {
                tiposCategorias.add(cat.getTipo());
            }
            model.addAttribute("productos", productos);
            model.addAttribute("totalProductos", productos.size());
            model.addAttribute("categorias", categorias);
            model.addAttribute("tiposCategorias", tiposCategorias);
        } else {
            // Manejar el caso cuando no se encuentra la categoría
            model.addAttribute("mensaje", "No se encontró la categoría con el tipo especificado.");
        }
        return "/pruebas/listado";
    }
}

