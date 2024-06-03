package br.com.fiap.produtomvc.repositories;

import br.com.fiap.produtomvc.models.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
}
