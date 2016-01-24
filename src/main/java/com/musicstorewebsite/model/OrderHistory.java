package com.musicstorewebsite.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ldeng on 1/22/2016.
 */

@Entity
public class OrderHistory implements Serializable {

    private static final long serialVersionUID = 1083533250613139445L;

    @Id
    @GeneratedValue
    private int orderHistoryId;
    private int customerId;
    private String customerName;
    private int customerOrderId;
    private int cartId;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "cartItem_orderHistory", joinColumns = @JoinColumn(name = "orderHistoryId"),
            inverseJoinColumns = @JoinColumn
                    (name = "cartItemId"))
    private List<CartItem> cartItems = new ArrayList<CartItem>();
    private double grandTotal;
    private String billingAddress;
    private String shippingAddress;

    public int getOrderHistoryId() {
        return orderHistoryId;
    }

    public void setOrderHistoryId(int orderHistoryId) {
        this.orderHistoryId = orderHistoryId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public int getCustomerOrderId() {
        return customerOrderId;
    }

    public void setCustomerOrderId(int customerOrderId) {
        this.customerOrderId = customerOrderId;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public double getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(double grandTotal) {
        this.grandTotal = grandTotal;
    }

    public String getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(String billingAddress) {
        this.billingAddress = billingAddress;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }
}
