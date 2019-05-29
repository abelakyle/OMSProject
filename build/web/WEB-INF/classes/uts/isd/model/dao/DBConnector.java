/**
 *
 * @author Kyle
 */
 
package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

 

public class DBConnector {

 

private String URL = "jdbc:derby://localhost:1527/onlineDB";

private String dbuser = "isduserr";

private String dbpass = "admin";

private String driver = "org.apache.derby.jdbc.ClientDriver";

private Connection conn;

 

public DBConnector() throws ClassNotFoundException, SQLException {

Class.forName(driver);

conn = DriverManager.getConnection(URL, dbuser, dbpass);

}

 

public Connection openConnection(){

return this.conn;

}

 

public void closeConnection() throws SQLException {

this.conn.close();

}

}