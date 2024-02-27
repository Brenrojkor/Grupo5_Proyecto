/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Practica3_Grupo5.service;

import Practica3_Grupo5.domain.CategoriaArboles;
import java.util.List;

public interface ArbolesService {

    public List<CategoriaArboles> getCategoriasArboles(boolean activos);

}
