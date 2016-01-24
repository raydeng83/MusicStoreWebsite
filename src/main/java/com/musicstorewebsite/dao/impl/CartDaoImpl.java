package com.musicstorewebsite.dao.impl;

import com.musicstorewebsite.dao.CartDao;
import com.musicstorewebsite.model.Cart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

/**
 * Created by Le on 1/23/2016.
 */
@Service
@Transactional
public class CartDaoImpl implements CartDao{

    @Autowired
    private SessionFactory sessionFactory;

    public Cart getCartById (int cartId) {
        Session session = sessionFactory.getCurrentSession();
        return (Cart) session.get(Cart.class, cartId);
    }

    public Cart validate(int cartId) throws IOException {
        Cart cart = getCartById(cartId);
        if (cart == null || cart.getCartItems().size() == 0) {
            throw new IOException(cartId+"");
        }

        return cart;
    }
}
