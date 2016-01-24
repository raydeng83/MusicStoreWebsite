package com.musicstorewebsite.service.impl;

import com.musicstorewebsite.dao.CustomerOrderDao;
import com.musicstorewebsite.model.Cart;
import com.musicstorewebsite.model.CartItem;
import com.musicstorewebsite.model.CustomerOrder;
import com.musicstorewebsite.service.CartService;
import com.musicstorewebsite.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Le on 1/23/2016.
 */

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal=0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            grandTotal=grandTotal+item.getTotalPrice();
        }

        return grandTotal;
    }
}
