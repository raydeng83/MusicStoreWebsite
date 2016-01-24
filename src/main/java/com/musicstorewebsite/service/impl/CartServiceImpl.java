package com.musicstorewebsite.service.impl;

import com.musicstorewebsite.dao.CartDao;
import com.musicstorewebsite.model.Cart;
import com.musicstorewebsite.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Le on 1/23/2016.
 */
@Service
public class CartServiceImpl implements CartService{

    @Autowired
    private CartDao cartDao;

    public Cart getCartById (int cartId) {
        return cartDao.getCartById(cartId);
    }

    public void update(Cart cart) {
        cartDao.update(cart);
    }
}
