package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.User;

public class DBManager {
    
        private Statement st;

        public DBManager(Connection conn) throws SQLException {
            st = conn.createStatement();
        }
        
        public void addUser(String firstName, String lastName, String ID, String password, String email, String phone, String address, String city, String state, String postcode, String dob) throws SQLException {
            String createQueryString = "insert into users "+ "values('" + ID + "','" + email + "','"+ firstName + "','" + lastName + "','" + password + "','" + email + "','" + phone + "','" + address + "','" + city + "','" + state + "','" + postcode + "','" +dob + "')";
            st.executeQuery(createQueryString);
            
            //might need testing whether record was created -check Master 
        }
            
        public void updateUser(String firstName, String lastName, String ID, String password, String email, String phone, String address, String city, String state, String postcode, String dob) throws SQLException{
            
            String createQueryString = "update onlineDB set firstname ='" + firstName +  "', lastname = '" + lastName + "', password ='" + password + "', email ='" + email + "', phone = '" + phone + "', address= '" + address + "', city ='" + city + "', state ='" + state + "', postcode ='" + postcode + "', dob ='" +dob + "' where ID = '" + ID + "'";
            st.executeUpdate(createQueryString);
            
            //might need testing whether record was update -check Master
        }
        
        public User findUser(String ID, String password) throws SQLException{
            
                String createQueryString = "select * from users where ID = '"+ ID +"' and password ='"+ password + "'";
                ResultSet rs = st.executeQuery(createQueryString);
            
                boolean hasUser = rs.next();
                User userFromDB = null;

                    if (hasUser){
                            String uID = rs.getString("ID");
                            String uEmail = rs.getString("email");
                            String uPassword = rs.getString("password");
                            String uName = rs.getString("name");
                            String uPhone = rs.getString("phone");
                            String uAddress = rs.getString("address");
                            String uCity = rs.getString("city");
                            String uState = rs.getString("state");
                            String uPostcode = rs.getString("postcode");
                            String uDateOfBirth = rs.getString("dateOfBirth");

                            userFromDB = new User (uID, uEmail,  uPassword, uName,  uPhone,  uAddress,  uCity,  uState,  uPostcode,  uDateOfBirth);
                    }       
                rs.close();

                return userFromDB;
                
                //need to validate inputs?
                //if user !exist then return error or something
        }
        
}
