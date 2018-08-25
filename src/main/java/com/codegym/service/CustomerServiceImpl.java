package com.codegym.service;

import com.codegym.model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "Quỳnh", "quynh@codegym.com", "Hà Nội"));
        customers.put(2, new Customer(2, "Thành", "thanh@codegym.com", "Hà Tây"));
        customers.put(3, new Customer(3, "Cường", "cuong@codegym.com", "Hà Nam"));
        customers.put(4, new Customer(4, "Trang", "trang@codegym.com", "Hà Tây"));
        customers.put(5, new Customer(5, "Tuyến", "tuyen@codegym.com", "Hà Nội"));
        customers.put(6, new Customer(6, "Quyên", "quyen@codegym.com", "Cà Mau"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);

    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);

    }

    @Override
    public void remove(int id) {
        customers.remove(id);

    }
}
