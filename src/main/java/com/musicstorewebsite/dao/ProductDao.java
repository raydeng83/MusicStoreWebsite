package com.musicstorewebsite.dao;

import com.musicstorewebsite.model.Product;

import java.util.List;

/**
 * Created by Le on 1/23/2016.
 */
public interface ProductDao {

    Product getProductById(int id);

    List<Product> getProductList ();

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
