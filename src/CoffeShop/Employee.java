/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CoffeShop;

import java.time.LocalDateTime;

/**
 *
 * @author Asus
 */
public class Employee {
    private int employeeID;
    private String employeeUsername;
    private String employeePassword;
    private String employeeName;
    private String employeeRole;
    private LocalDateTime employeeDateOfEmployment;
    private String imagePath;
 

    public Employee(int employeeID, String employeeName, String employeeRole, LocalDateTime employeeDateOfEmployment) {
        this.employeeID = employeeID;
        this.employeeName = employeeName;
        this.employeeRole = employeeRole;
        this.employeeDateOfEmployment = employeeDateOfEmployment;
    }
    
    public Employee(int employeeID, String employeeUsername, String employeePassword, String employeeName, String employeeRole, LocalDateTime employeeDateOfEmployment, String imagePath) {
        this.employeeID = employeeID;
        this.employeeUsername = employeeUsername;
        this.employeePassword = employeePassword;
        this.employeeName = employeeName;
        this.employeeRole = employeeRole;
        this.employeeDateOfEmployment = employeeDateOfEmployment;
        this.imagePath = imagePath;
    }

    
    public int getEmployeeID(){
        return employeeID;
    }
    
    public String getEmployeeUsername() {
        return employeeUsername;
    }
    
    public String getEmployeePassword() {
        return employeePassword;
    }
    
    public String getEmployeeName(){
        return employeeName;
    }
    
    public String getEmployeeRole(){
        return employeeRole;
    }
    
    public LocalDateTime getEmployeeDateOfEmployment(){
        return employeeDateOfEmployment;
    }
    
    public String getImagePath(){
        return imagePath;
    }

}