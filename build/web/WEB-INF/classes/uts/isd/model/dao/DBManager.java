package uts.isd.model.dao;

import java.util.*;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.*;
import java.time.format.DateTimeFormatter;
import uts.isd.model.*;


public class DBManager {
    
        private Statement st;

        public DBManager(Connection conn) throws SQLException {
            st = conn.createStatement();
        }
        
        public void addUser(String ID, String email, String password, String name, String phone) throws SQLException {
            String createQueryString = "insert into Users "+ "values('" + ID + "','" + email + "','"+ password + "','" + name + "','" + phone + "')";
            boolean recordCreated = st.executeUpdate(createQueryString) > 0;
            
            if(recordCreated){
                System.out.println("record created");
                } else {
                 System.out.println("record not created");
                 }
            
            
            //might need testing whether record was created -check Master 
        }
            
        public void updateUser(String ID, String email, String password, String name, String phone) throws SQLException{
            
            String createQueryString = "update users set name ='" +name+ "' , password ='" + password + "', email ='" + email + "', phone = '" + phone +  "' where ID = '" + ID + "'";
            st.executeUpdate(createQueryString);
            
            //might need testing whether record was update -check Master
        }
        
        public User findUser(String email, String password) throws SQLException{
            
                String createQueryString = "select * from users where email = '"+ email +"' and password ='"+ password + "'";
                ResultSet rs = st.executeQuery(createQueryString);
            
                boolean hasUser = rs.next();
                User userFromDB = null;

                    if (hasUser){
                            String uID = rs.getString("ID");
                            String uEmail = rs.getString("email");
                            String uPassword = rs.getString("password");
                            String uName = rs.getString("name");
                            String uPhone = rs.getString("phone");

                            userFromDB = new User (uID, uEmail,  uPassword, uName,  uPhone);
                    }       
                rs.close();
                return userFromDB;                
        }
        
         public void deleteUser(String ID) throws SQLException{
        //code for delete-operation
        
        String deleteQueryString = "delete from users where ID= '" + ID + "' ";
        boolean recordDeleted = st.executeUpdate(deleteQueryString) > 0;
         
         if (recordDeleted){
         System.out.println("record deleted");
         }
         else {
         System.out.println("record not deleted");
         }
    }
         
         public String stampDate(){
             return LocalDate.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
         }
         
         public String stampTime(){
             return LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"));
         }
         
         public void createAccessLog(String userID, String loginDate, String loginTime, String logoutTime) throws SQLException{
            String createQueryString = "INSERT INTO ACCESS_LOG (user_id, login_date, login_time, logout_time)" + " values('" + userID + "','" + loginDate + "','"+ loginTime + "','" + logoutTime + "')";
            boolean recordCreated = st.executeUpdate(createQueryString) > 0;
            
            if(recordCreated){
                System.out.println("record created");
                } else {
                 System.out.println("record not created");
                 }
         }
         
         public ArrayList<Log> getAccessLog(String userID) throws SQLException{
             
                ArrayList<Log> logList = new ArrayList<Log>();
             
                String createQueryString = "select * from access_log where user_id = '"+ userID +"'";
                ResultSet rs = st.executeQuery(createQueryString);                        

                        while(rs.next()){
                                Log log = new Log();
                                log.setLogID(rs.getInt(1));
                                //log.setUserID(rs.getString(2));
                                log.setLoginDate(rs.getString(3));
                                log.setLoginTime(rs.getString(4));
                                log.setLogoutTime(rs.getString(5));
                                logList.add(log);                                
                        }                                       
                return logList;

         }
         
         public ArrayList<Log> getSearchedLog(String userID, String searchDate) throws SQLException{
             ArrayList<Log> logList = new ArrayList<Log>();
             
                String createQueryString = "select * from access_log where user_id = '"+ userID +"' and login_date = '"+searchDate+"'";
                ResultSet rs = st.executeQuery(createQueryString);                        

                        while(rs.next()){
                                Log log = new Log();
                                log.setLogID(rs.getInt(1));
                                //log.setUserID(rs.getString(2));
                                log.setLoginDate(rs.getString(3));
                                log.setLoginTime(rs.getString(4));
                                log.setLogoutTime(rs.getString(5));
                                logList.add(log);                                
                        }                                       
                return logList;   
         }
         
         public void deleteLog(String eraseID) throws SQLException{
                String deleteQueryString = "delete from access_log where Log_ID = "+eraseID;
                st.executeUpdate(deleteQueryString);
         }
         
         public boolean logOwned(String eraseID, String userID) throws SQLException{
                String createQueryString = "select * from access_log where Log_ID = "+ eraseID +" and User_ID ='"+ userID + "'";
                ResultSet rs = st.executeQuery(createQueryString);
                return rs.next();
         }

}
