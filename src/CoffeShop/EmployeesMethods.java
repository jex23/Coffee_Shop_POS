/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CoffeShop;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
    
    public List<Employee> employeesMethod() {
        List<Employee> employees = new ArrayList<>();
        String query = "SELECT employee_id, employee_name, employee_role, employee_date_of_employment FROM tbl_employees";
            try (Connection conn = connector.createConnection(); 
                Statement stmt = conn.createStatement(); 
                ResultSet rs = stmt.executeQuery(query)) {

                while (rs.next()) {
                          int employeeID = rs.getInt("employee_id");
                          String employeeName = rs.getString("employee_name");
                          String employeeRole = rs.getString("employee_role");
                          String dateStr = rs.getString("employee_date_of_employment");
                          LocalDateTime employeeDateOfEmployment = LocalDateTime.parse(dateStr, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));


                    Employee employee = new Employee(employeeID, employeeName, employeeRole, employeeDateOfEmployment);
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
