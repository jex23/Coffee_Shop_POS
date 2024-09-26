package CoffeShop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author James
 */
public class sqlConnector {
    
    private String connString = "jdbc:mysql://localhost:3306/Coffee_Shop";
    private String userName = "root";
    private String passWord = "";
    
    // Method to create a connection to the database
    public Connection createConnection() throws SQLException {
        return DriverManager.getConnection(connString, userName, passWord);
    }
    
    
}
