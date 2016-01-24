package com.musicstorewebsite.dao;

import com.musicstorewebsite.model.Cart;

import java.io.IOException;

/**
 * Created by Le on 1/23/2016.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
}
