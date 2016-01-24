package com.musicstorewebsite.service;

import com.musicstorewebsite.model.CustomerOrder;

/**
 * Created by Le on 1/23/2016.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
