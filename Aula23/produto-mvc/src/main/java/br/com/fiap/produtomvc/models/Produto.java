package br.com.fiap.produtomvc.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode(exclude = {"nome", "descricao", "valor", "categoria"})

@Entity
@Table(name = "tb_produto")
public class Produto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Campo requerido")
    @Size(min = 3, message = "O nome deve ter no minimo 3 caracteres")
    private String nome;

    @NotBlank(message = "Campo requerido")
    @Column(columnDefinition = "TEXT")
    private String descricao;

    @NotNull(message = "Campo requerido")
    @Positive(message = "O valor deve ser positivo")
    private Double valor;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "categoria_id", nullable = false)
    private Categoria categoria;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "tb_produto_loja",
            joinColumns = @JoinColumn(name = "produto_id"),
            inverseJoinColumns = @JoinColumn(name = "loja_id"))
    private Set<Loja> lojas = new HashSet<>(); // Usa o set pois a tabela auxiliar nao pode ter produtos repetidos (id composto unique, ex id 1 com id 1 ficara 11)

}
