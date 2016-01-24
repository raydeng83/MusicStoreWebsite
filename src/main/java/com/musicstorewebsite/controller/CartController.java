package com.musicstorewebsite.controller;

import com.musicstorewebsite.model.Customer;
import com.musicstorewebsite.service.CartService;
import com.musicstorewebsite.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Le on 1/23/2016.
 */
@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping
    public String get(@AuthenticationPrincipal User activeUser) {
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
        int cartId = customer.getCart().getCartId();
        return "redirect:/cart/"+cartId;
    }

    @RequestMapping(value="/{cartId}", method = RequestMethod.GET)
    public String getCart(@PathVariable(value = "cartId") int cartId, Model model) {
        model.addAttribute("cartId", cartId);

        return "cart";
    }
}
