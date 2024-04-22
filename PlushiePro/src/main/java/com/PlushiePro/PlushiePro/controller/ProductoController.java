
package com.PlushiePro.PlushiePro.controller;

import com.PlushiePro.PlushiePro.domain.Categoria;
import com.PlushiePro.PlushiePro.service.CategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.PlushiePro.PlushiePro.service.ProductoService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/producto")
public class ProductoController {
  

    @Autowired
    private ProductoService productoService;
    @Autowired
    private CategoriaService categoriaService;

    @GetMapping("/listado")
    public String listado(Model model) {
        var productos = productoService.getProductos(false);
        var categorias = categoriaService.getCategorias(false);
        model.addAttribute("productos", productos);
        model.addAttribute("totalProductos", productos.size());
        model.addAttribute("categorias", categorias);
        return "/producto/listado";
    }
    
        @GetMapping("/listado2")
    public String listado2(Model model) {
        var productos = productoService.getProductos(false);
        model.addAttribute("productos", productos);
        return "/productos/listado2";
    }

    @PostMapping("/query1")
    public String consultaQuery1(@RequestParam(value = "nombre") String nombre, Model model) {
        var productos = productoService.findByNombreOrderByNombre(nombre);
        model.addAttribute("productos", productos);
        model.addAttribute("precioInf", nombre);
        return "/pruebas/listado2";     
    
}
}