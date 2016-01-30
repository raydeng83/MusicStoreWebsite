package com.musicstorewebsite.controller;

import com.musicstorewebsite.model.Product;
import com.musicstorewebsite.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.List;

/**
 * Created by Le on 1/23/2016.
 */

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/productList/all")
    public String getAllProducts(Model model) {
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/productList")
    public String getProductsByCategory(@RequestParam("searchCondition") String searchCondition, Model model) {
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);
        model.addAttribute("searchCondition", searchCondition);

        return "productList";
    }

    @RequestMapping("/viewProduct/{productId}")
    public String viewProductByCategory(@PathVariable int productId, Model model) throws IOException {

        Product product = productService.getProductById(productId);
        model.addAttribute(product);

        return "viewProduct";
    }
}
