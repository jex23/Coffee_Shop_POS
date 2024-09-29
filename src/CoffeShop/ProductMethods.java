package CoffeShop;

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

    // Method to fetch products from the database with pagination
    public List<Product> productMethod(int pageNumber, int pageSize) {
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM tbl_products LIMIT ? OFFSET ?";

        int offset = (pageNumber - 1) * pageSize; // Calculate offset

        try (Connection conn = connector.createConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, pageSize); // Set limit
            stmt.setInt(2, offset);    // Set offset

            ResultSet rs = stmt.executeQuery();
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

    // Method to fetch products from a specific category with pagination
    public List<Product> getProductsByCategory(String category, int pageNumber, int pageSize) {
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM tbl_products WHERE product_category = ? LIMIT ? OFFSET ?";

        int offset = (pageNumber - 1) * pageSize; // Calculate offset

        try (Connection conn = connector.createConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, category); // Set category
            stmt.setInt(2, pageSize);     // Set limit
            stmt.setInt(3, offset);       // Set offset

            ResultSet rs = stmt.executeQuery();
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

    // Method to get the total count of products
    public int getTotalProductCount() {
        int count = 0;
        String query = "SELECT COUNT(*) FROM tbl_products";

        try (Connection conn = connector.createConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            if (rs.next()) {
                count = rs.getInt(1); // Get the count
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return count;
    }

    // Method to search products by name
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
