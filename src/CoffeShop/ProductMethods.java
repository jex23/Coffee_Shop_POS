/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CoffeShop;

/**
 *
 * @author James
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductMethods {

    private sqlConnector connector;

    // Constructor to initialize the connector
    public ProductMethods() {
        connector = new sqlConnector();
    }

    // Method to fetch products from the database
    public List<Product> productMethod() {
        List<Product> products = new ArrayList<>();

        String query = "SELECT * FROM tbl_products";
        try (Connection conn = connector.createConnection(); 
             Statement stmt = conn.createStatement(); 
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                int productId = rs.getInt("product_id");
                String productName = rs.getString("product_name");
                String productCategory = rs.getString("product_category");
                double productPrice = rs.getDouble("product_price");
                String productImagePath = rs.getString("product_ImagePath");

                Product product = new Product(productId, productName, productCategory, productPrice, productImagePath);
                products.add(product);
            }
            rs.close();
            conn.close();        
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }
    

    public List<Product> searchMenuMethod(String searchTerm) {
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM tbl_products WHERE product_name LIKE ?";
        
        try (Connection conn = connector.createConnection();
             PreparedStatement statement = conn.prepareStatement(query)) {
             
            statement.setString(1, "%" + searchTerm + "%"); // Wildcard search
            
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("product_id");
                String productName = rs.getString("product_name");
                String productCategory = rs.getString("product_category");
                double productPrice = rs.getDouble("product_price");
                String productImagePath = rs.getString("product_ImagePath");
                
                Product product = new Product(productId, productName, productCategory, productPrice, productImagePath);
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return products;
    
    }
}
