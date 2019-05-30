package uts.isd.model;

import java.io.Serializable;

public class User implements Serializable {

    private String name;
    private String ID;
    private String password;
    private String email;
    private String phone;

    
    public User(String ID, String email, String password, String name, String phone) {
        this.name = name;
        this.ID = ID;
        this.password = password;
        this.email = email;
        this.phone = phone;
    }
    
    public User() { }
    
    public void updateDetails(String ID, String email, String password, String name, String phone){
        this.name = name;
        this.ID = ID;
        this.password = password;
        this.email = email;
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
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
     
    public boolean matchPassword(String password){
        return this.password.equals(password);
    }
    
    public boolean matchId(String ID){
        return this.ID.equals(ID);
    }
    
    public boolean checkDetails(String ID, String password){
        return matchId(ID) && matchPassword(password);
    }

    @Override
    public String toString() {
        return name;
    }
}
