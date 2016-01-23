package com.musicstorewebsite.dao;

import com.musicstorewebsite.model.Product;

import java.util.List;

/**
 * Created by Le on 1/23/2016.
 */
public interface ProductDao {

    List<Product> getProductList ();
}
