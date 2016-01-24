package com.musicstorewebsite.controller;

import com.musicstorewebsite.model.Cart;
import com.musicstorewebsite.model.Customer;
import com.musicstorewebsite.model.CustomerOrder;
import com.musicstorewebsite.service.CartService;
import com.musicstorewebsite.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Le on 1/23/2016.
 */

@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @RequestMapping("/order/{cartId}")
    public String createOrder (@PathVariable("cartId") int cartId) {
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartService.getCartById(cartId);
        customerOrder.setCart(cart);
        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setShippingAddress(customer.getShippingAddress());
        customerOrder.setBillingAddress(customer.getBillingAddress());

        customerOrderService.addCustomerOrder(customerOrder);

        return "redirect:/checkout?cartId="+cartId;
    }

}
