package com.grandcircus.spring;
/**
 * Created by broadwells on 5/8/17.
 */
public class UserInfo {
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String confirmPassword;
    private String coffeeChoice;
    private String shopLocate;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getCoffeeChoice() {
        return coffeeChoice;
    }

    public void setCoffeeChoice(String coffeeChoice) {
        this.coffeeChoice = coffeeChoice;
    }

    public String getShopLocate() {
        return shopLocate;
    }

    public void setShopLocate(String shopLocate) {
        this.shopLocate = shopLocate;
    }
}
