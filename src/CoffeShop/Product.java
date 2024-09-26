/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CoffeShop;

/**
 *
 * @author James
 */
public class Product {
    private int productId;
    private String productName;
    private String productCategory;
    private double productPrice;
    private String productImagePath;

    // Constructor
    public Product(int productId, String productName, String productCategory, double productPrice, String productImagePath) {
        this.productId = productId;
        this.productName = productName;
        this.productCategory = productCategory;
        this.productPrice = productPrice;
        this.productImagePath = productImagePath;
    }

    // Getters
    public int getProductId() {
        return productId;
    }

    public String getProductName() {
        return productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public String getProductImagePath() {
        return productImagePath;
    }
}
