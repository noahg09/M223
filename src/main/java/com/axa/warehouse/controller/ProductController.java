package com.axa.warehouse.controller;

import com.axa.warehouse.model.Product;
import com.axa.warehouse.repository.ProductRepository;
import com.axa.warehouse.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@RequestMapping("products")
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping
    @PreAuthorize("hasAuthority('ROLE_STAFF_MEMBER')")
    public Collection<Product> getProducts() {
        return productService.getAllProducts();
    }

    @PostMapping
    @PreAuthorize("hasAnyAuthority('ROLE_ASSISTANT_MANAGER', 'ROLE_MANAGER', 'ROLE_ADMIN')")
    public void addProduct(@RequestBody Product product) {
        productService.addProduct(product);
    }

    @DeleteMapping("{id}")
    @PreAuthorize("hasAnyAuthority('ROLE_ADMIN', 'ROLE_MANAGER')")
    public void removeProduct(@PathVariable long id) {
        productService.deleteProductById(id);
    }
}
