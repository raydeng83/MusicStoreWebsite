package com.musicstorewebsite.dao;

import com.musicstorewebsite.model.Cart;

/**
 * Created by Le on 1/23/2016.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    void updateCart(Cart cart);
}
