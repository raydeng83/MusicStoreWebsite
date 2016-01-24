package com.musicstorewebsite.service.impl;

import com.musicstorewebsite.dao.CustomerOrderDao;
import com.musicstorewebsite.model.CustomerOrder;
import com.musicstorewebsite.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Le on 1/23/2016.
 */

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }
}
