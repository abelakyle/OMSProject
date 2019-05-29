package uts.wsd;


import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Kyle_2
 */
public class User implements Serializable {

    private String firstName;
    private String lastName;
    private String ID;
    private String password;
    private String email;
    private String phone;
    private String address;
    private String city;
    private String state;
    private String postcode;
    private String dateOfBirth;

    
    public User(String firstName, String lastName, String ID, String password, String email, String phone, String address, String city, String state, String postcode, String dateOfBirth) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.ID = ID;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.city = city;
        this.state = state;
        this.postcode = postcode;
        this.dateOfBirth = dateOfBirth;
    }
    
    public User() {
    
    }
    
    public void updateDetails(String firstName, String lastName, String ID, String password, String email, String phone, String address, String city, String state, String postcode, String dateOfBirth){
        this.firstName = firstName;
        this.lastName = lastName;
        this.ID = ID;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.city = city;
        this.state = state;
        this.postcode = postcode;
        this.dateOfBirth = dateOfBirth;
    }

    public boolean matchPassword(String password){
        return this.password.equals(password);
    }
    
    public boolean matchId(String ID){
        return this.ID.equals(ID);
    }
    
    public boolean checkDetails(String ID, String password){
        return matchId(ID) && matchPassword(password);
    }
    
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

    public String getID() {
        return ID;
    }

    public void setId(String ID) {
        this.ID = ID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    @Override
    public String toString() {
        return firstName +  lastName;
    }

    
}
