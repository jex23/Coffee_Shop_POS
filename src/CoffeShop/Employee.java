/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CoffeShop;

/**
 *
 * @author Asus
 */
public class Employee {
    private int employeeId;
    private String employeeName;
    private String employeeUsername;
    private String employeeDateofEmployment;
    private String employeeImagePath;

    public Employee(int employeeId, String employeeName, String employeeUsername, String employeeDateofEmployment,String employeeImagePath){
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.employeeUsername = employeeUsername;
        this.employeeDateofEmployment = employeeDateofEmployment;
        this.employeeImagePath = employeeImagePath;
    }
    
    public int getEmployeeId(){
        return employeeId;
    }
    
    public String getEmployeeName(){
        return employeeName;
    }
    
    public String getEmployeeUserName(){
        return employeeUsername;
    }
    
    public String getEmployeeDateofEmployment(){
        return employeeDateofEmployment;
    }
    
    public String getImagePath(){
        return employeeImagePath;
    }  

}
