/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Practica3_Grupo5.dao;

import Practica3_Grupo5.domain.CategoriaArboles;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArbolDao extends JpaRepository<CategoriaArboles, Long> {

}
