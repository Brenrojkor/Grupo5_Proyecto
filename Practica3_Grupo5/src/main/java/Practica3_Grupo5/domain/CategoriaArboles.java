/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Practica3_Grupo5.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name = "árbol")
public class CategoriaArboles implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_arbol")
    private Long id_arbol;
    private String ruta_imagen;
    private String nombre;
    private String tipo_flor;
    private String dureza;
    private boolean activo;
    private String descripcion;

    public CategoriaArboles() {
    }

    public CategoriaArboles(String categoriaArboles, boolean activo) {
        this.descripcion = categoriaArboles;
        this.activo = activo;
    }
}
