package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager {
    
        private Statement st;

        public DBManager(Connection conn) throws SQLException {
            st = conn.createStatement();
        }
        
        public void addUser(String firstName, String lastName, String ID, String password, String email, String phone, String address, String city, String state, String postcode, String dob) throws SQLException {
            String createQueryString = "insert into onlineDB "+ "values('" + ID + "','" + email + "','"+ firstName + "','" + lastName + "','" + password + "','" + email + "','" + phone + "','" + address + "','" + city + "','" + state + "','" + postcode + "','" +dob + "')";
            st.executeQuery(createQueryString);
            
            //might need testing whether record was created -check Master 
        }
            
        public void updateUser(String firstName, String lastName, String ID, String password, String email, String phone, String address, String city, String state, String postcode, String dob) throws SQLException{
            String createQueryString = "update onlineDB set firstname ='" + firstName +  "', lastname = '" + lastName + "', password ='" + password + "', email ='" + email + "', phone = '" + phone + "', address= '" + address + "', city ='" + city + "', state ='" + state + "', postcode ='" + postcode + "', dob ='" +dob + "' where ID = '" + ID + "'";
            st.executeUpdate(createQueryString);
            
            //might need testing whether record was update -check Master
        }
        
}
