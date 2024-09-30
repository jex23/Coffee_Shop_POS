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
    private String employeeName;
    private String employeeRole;
    private LocalDateTime employeeDateOfEmployment;
 

    public Employee(int employeeID, String employeeName, String employeeRole, LocalDateTime employeeDateOfEmployment){
        this.employeeID = employeeID;
        this.employeeName = employeeName;
        this.employeeRole = employeeRole;
        this.employeeDateOfEmployment = employeeDateOfEmployment;
    }
    
    public int getEmployeeID(){
        return employeeID;
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


}