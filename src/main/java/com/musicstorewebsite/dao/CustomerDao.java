package com.musicstorewebsite.dao;

import com.musicstorewebsite.model.Customer;

/**
 * Created by Le on 1/23/2016.
 */
public interface CustomerDao {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

}
