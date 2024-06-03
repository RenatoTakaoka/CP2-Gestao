package br.com.fiap.produtomvc.controllers;

import br.com.fiap.produtomvc.dto.CategoriaDTO;
import br.com.fiap.produtomvc.models.Categoria;
import br.com.fiap.produtomvc.models.Produto;
import br.com.fiap.produtomvc.services.CategoriaService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/categorias")
public class CategoriaController {

    @Autowired
    private CategoriaService service;

//    @Autowired
//    private CategoriaRepository repository;

    @GetMapping("/form")
    public String loadForm(Model model) {
        model.addAttribute("categoria", new CategoriaDTO());
        return "categoria/novo-categoria";
    }

    @PostMapping()
    //@Transactional
    public String insert(@Valid CategoriaDTO categoriaDTO,
                         BindingResult result,
                         RedirectAttributes attributes) {
        if(result.hasErrors()){
            return "/categoria/novo-categoria";
        }
        //repository.save(categoria);
        service.insert(categoriaDTO);
        attributes.addFlashAttribute("mensagem", "Categoria salva com sucesso");
        return "redirect:/categorias/form";
    }

    @GetMapping()
//  @Transactional(readOnly = true)
    public String findAll(Model model) {
        List<CategoriaDTO> categoriasDTO = service.findAll();
//      model.addAttribute("categorias", repository.findAll());
        model.addAttribute("categorias", categoriasDTO);
        return "/categoria/listar-categorias";
    }

    @GetMapping("/{id}")
    @Transactional(readOnly = true)
    public String findById(@PathVariable("id") Long id, Model model){
//        Categoria categoria = repository.findById(id).orElseThrow(
//                () -> new IllegalArgumentException("Categoria invalida - id: " + id)
//        );
        CategoriaDTO categoriaDTO = service.findById(id);
        model.addAttribute("categoria", categoriaDTO);
        return "/categoria/editar-categoria";
    }

    @PutMapping("/{id}")
//    @Transactional
    public String update(@PathVariable("id") Long id,
                         @Valid CategoriaDTO categoriaDTO,
                         BindingResult result) {
        if(result.hasErrors()) {
            categoriaDTO.setId(id);
            return "/categoria/editar-categoria";
        }
//        repository.save(categoria);
        service.update(id, categoriaDTO);
        return "redirect:/categorias";
    }

    @DeleteMapping("/{id}")
    @Transactional
    public String delete(@PathVariable("id") Long id, Model model) {
//        if(!repository.existsById(id)) {
//            throw new IllegalArgumentException("Categoria invalida - id: " + id);
//        }
//        try {
//            repository.deleteById(id);
//        } catch(Exception e) {
//            throw new IllegalArgumentException("Categoria invalida - id: " + id);
//        }
        service.delete(id);
        return "redirect:/categorias";
    }
}
