/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CoffeShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author jenalyn
 */
public class EmployeesMethods {
    
    private sqlConnector connector;
    
    //constructor to initial connector
    public EmployeesMethods(){
        connector = new sqlConnector();
    }
    
    public List<Employee> employeesMethod() {
        List<Employee> employees = new ArrayList<>();
        String query = "SELECT employee_id, employee_name, employee_role, employee_date_of_employment, last_Login FROM tbl_employees";
            try (Connection conn = connector.createConnection(); 
                Statement stmt = conn.createStatement(); 
                ResultSet rs = stmt.executeQuery(query)) {

                while (rs.next()) {
                          int employeeID = rs.getInt("employee_id");
                          String employeeName = rs.getString("employee_name");
                          String employeeRole = rs.getString("employee_role");
                          String dateStr = rs.getString("employee_date_of_employment");
                          LocalDateTime employeeDateOfEmployment = LocalDateTime.parse(dateStr, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
                          LocalDateTime lastLogin = LocalDateTime.parse(dateStr, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));


                    Employee employee = new Employee(employeeID, employeeName, employeeRole, employeeDateOfEmployment, lastLogin);
                    employees.add(employee);                    
            }
            rs.close();
            conn.close();        
            } catch (SQLException e) {
            e.printStackTrace();
            }

        return employees;
    }
    
    public Employee getEmployeeById(int employeeID) {
        Employee employee = null;
        String query = "SELECT employee_username, employee_password, employee_name, employee_role, employee_ImagePath FROM tbl_employees WHERE employee_id = ?";

        try (Connection conn = connector.createConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setInt(1, employeeID);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String username = rs.getString("employee_username");
                String password = rs.getString("employee_password");
                String name = rs.getString("employee_name");
                String role = rs.getString("employee_role");
                String imagePath = rs.getString("employee_ImagePath");
                LocalDateTime dateOfEmployment = LocalDateTime.now(); 
                LocalDateTime lastLogin = LocalDateTime.now(); 

                employee = new Employee(employeeID, username, password, name, role, dateOfEmployment, lastLogin, imagePath);
            }
            rs.close();
            conn.close();  
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employee;
    }


    public void updateEmployee(Employee employee) {
        String query = "UPDATE tbl_employees SET employee_name = ?, employee_role = ?, employee_username = ?, employee_password = ?, employee_ImagePath = ? WHERE employee_id = ?";

        try (Connection conn = connector.createConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setString(1, employee.getEmployeeName());
            pstmt.setString(2, employee.getEmployeeRole());
            pstmt.setString(3, employee.getEmployeeUsername());
            pstmt.setString(4, employee.getEmployeePassword());
            pstmt.setString(5, employee.getImagePath());
            pstmt.setInt(6, employee.getEmployeeID());
            
            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                JOptionPane.showMessageDialog(null, "Employee updated successfully.");
            } else {
                JOptionPane.showMessageDialog(null, "Update failed. Employee not found.");
            }
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Database error: " + e.getMessage());
        }
    }


    public boolean deleteEmployeeById(int employeeId) {
        String sql = "DELETE FROM tbl_employees WHERE employee_id = ?";
        try (Connection conn = connector.createConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, employeeId);
            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0; 
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false; 
        }
    }

}