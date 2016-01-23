package com.musicstorewebsite.service.impl;

import com.musicstorewebsite.dao.ProductDao;
import com.musicstorewebsite.model.Product;
import com.musicstorewebsite.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Le on 1/23/2016.
 */

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    public List<Product> getProductList() {
        return productDao.getProductList();
    }
}
