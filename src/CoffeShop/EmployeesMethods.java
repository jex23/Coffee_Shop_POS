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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class EmployeesMethods {
    
    private sqlConnector connector;
    
    //constructor to initial connector
    public EmployeesMethods(){
        connector = new sqlConnector();
    }
    
    public List<Employee> EmployeesMethod() {
        List<Employee> employees = new ArrayList<>();
        String query = "SELECT * FROM tbl_employees";
            try (Connection conn = connector.createConnection(); 
                Statement stmt = conn.createStatement(); 
                ResultSet rs = stmt.executeQuery(query)) {

                 while (rs.next()) {
                    int employeeId = rs.getInt("employee_id");
                    String employeeName = rs.getString("employee_name");
                    String employeeUsername = rs.getString("employee_username");
                    String employeeDateofEmployment = rs.getString("employee_date_of_employment");
                    String employeeImagePath = rs.getString("employee_ImagePath");

                    Employee employee = new Employee(employeeId, employeeName, employeeUsername, employeeDateofEmployment, employeeImagePath);
                    employees.add(employee);                    
            }
            rs.close();
            conn.close();        
            } catch (SQLException e) {
            e.printStackTrace();
            }

        return employees;
    }
    
}
