package com.niharika.tutorials.controller;

import com.niharika.tutorials.model.Product;
import com.niharika.tutorials.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = {"http://localhost:3002","http://localhost:8083","http://localhost:4200"})
@RestController
@RequestMapping("/quickbooks")
public class ProductController {

    @Autowired
    ProductService productService;
    @GetMapping("/products")
    public ResponseEntity<List<Product>> getAllProducts() {
        try {
            List<Product> products = new ArrayList<>();

            productService.getAllProducts().forEach(products::add);
            return new ResponseEntity<>(products, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/products/{id}")
    public ResponseEntity<Product> getProductById(@PathVariable("id") long id) {
        Optional<Product> productData = productService.getProductNameById(id);

        if (productData.isPresent()) {
            return new ResponseEntity<>(productData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/products")
    public ResponseEntity<Product> createProduct(@RequestBody Product product) {
        try {
            Product productResp = productService.createProduct(product);

            return new ResponseEntity<>(productResp, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PutMapping("/products")
    public ResponseEntity<Product> updateProduct(@RequestBody Product product) {
        Optional<Product> productData = productService.getProductNameById(product.getId());

        if (productData.isPresent()) {
            Product productValue = productData.get();
            productValue.setTitle(product.getTitle());
            productValue.setDescription(product.getDescription());
            productValue.setAvailable(product.isAvailable());
            return new ResponseEntity<>(productService.createProduct(product), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/product/{id}")
    public ResponseEntity<HttpStatus> deleteTutorial(@PathVariable long id) {
        try {
            productService.deleteProductById(id);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @DeleteMapping("/products")
    public ResponseEntity<HttpStatus> deleteAllTutorials() {
        try {
            productService.deleteAllProducts();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @GetMapping("/products/available")
    public ResponseEntity<List<Product>> findByIsAvailable() {
        try {
            List<Product> product = productService.findByIsAvailable(true);

            if (product.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(product, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
