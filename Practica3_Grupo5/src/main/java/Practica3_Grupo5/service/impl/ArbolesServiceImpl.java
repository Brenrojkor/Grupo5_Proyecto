/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Practica3_Grupo5.service.impl;

import Practica3_Grupo5.dao.ArbolDao;
import Practica3_Grupo5.domain.CategoriaArboles;
import Practica3_Grupo5.service.ArbolesService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ArbolesServiceImpl implements ArbolesService {

    @Autowired
    private ArbolDao arbolDao;

    @Override
    @Transactional(readOnly = true)
    public List<CategoriaArboles> getCategoriasArboles(boolean activos) {

        var lista = arbolDao.findAll();
        if (activos) {
            lista.removeIf(e -> !e.isActivo());
        }
        return lista;
    }
}
