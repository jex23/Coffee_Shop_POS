package CoffeShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class LoginMethod {
   
    // Method to authenticate the user
    public boolean authenticate(String username, String password) {
        boolean isAuthenticated = false;
        sqlConnector callConnector = new sqlConnector();
        // SQL query to check the user credentials
        String query = "SELECT * FROM tbl_employees WHERE employee_username = ? AND employee_passsword = ?";

        try (Connection conn = callConnector.createConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, username);
            stmt.setString(2, password); // Note: Consider hashing the password for security

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                isAuthenticated = true; // User found
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage(), "Database Error", JOptionPane.ERROR_MESSAGE);
        }
        
        return isAuthenticated;
    }

      //for testing inser this 
// INSERT INTO tbl_employees (employee_username, employee_passsword, employee_name, employee_role, employee_ImagePath)
//VALUES ('admin', 'password', 'Admin User', 'Administrator', 'path/to/image.png');

}
