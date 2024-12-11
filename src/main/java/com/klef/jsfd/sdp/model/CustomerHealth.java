package com.klef.jsfd.sdp.model;

import jakarta.persistence.*;

@Entity
public class CustomerHealth {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private double height; // in cm
    private double weight; // in kg
    private double bmi;    // Calculated BMI
    private String goal;   // "gain", "lose", or "maintain"

    @OneToOne
    @JoinColumn(name = "customer_id", referencedColumnName = "id")
    private Customer customer;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getBmi() {
        return bmi;
    }

    public void setBmi(double bmi) {
        this.bmi = bmi;
    }

    public String getGoal() {
        return goal;
    }

    public void setGoal(String goal) {
        this.goal = goal;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
