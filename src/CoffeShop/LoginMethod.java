package CoffeShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class LoginMethod {

    public UserAuthenticate authenticate(String username, String password) {
        UserAuthenticate loggedInUser = null;
        sqlConnector callConnector = new sqlConnector();

        // SQL query to check the user credentials and fetch additional details
        String query = "SELECT employee_id, employee_passsword, employee_name, employee_role, employee_ImagePath FROM tbl_employees WHERE employee_username = ?";
        // SQL query to update the last login time
        String updateLoginQuery = "UPDATE tbl_employees SET last_Login = NOW() WHERE employee_username = ?";

        try (Connection conn = callConnector.createConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {

            // Set the username for the query
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // Retrieve stored password, name, role, image path, and employee ID from the result set
                String storedPassword = rs.getString("employee_passsword");
                String employeeName = rs.getString("employee_name");
                String employeeRole = rs.getString("employee_role");
                String employeeImagePath = rs.getString("employee_ImagePath");
                String employeeId = rs.getString("employee_id"); // Fetch the employee ID

                // Check if the entered password matches the stored password
                if (password.equals(storedPassword)) { // Plain text comparison
                    // User is authenticated, create UserAuthenticate object with employee details
                    loggedInUser = new UserAuthenticate(employeeId, username, employeeName, employeeRole, employeeImagePath);

                    // Update the last login timestamp
                    try (PreparedStatement updateStmt = conn.prepareStatement(updateLoginQuery)) {
                        updateStmt.setString(1, username);
                        updateStmt.executeUpdate();
                    }
                }
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage(), "Database Error", JOptionPane.ERROR_MESSAGE);
        }

        // Return UserAuthenticate object if authentication is successful, null otherwise
        return loggedInUser;
    }
}
