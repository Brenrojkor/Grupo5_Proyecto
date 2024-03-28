
package com.PlushiePro.PlushiePro.dao;

import com.PlushiePro.PlushiePro.domain.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriaDao extends JpaRepository <Categoria, Long> {
    
}