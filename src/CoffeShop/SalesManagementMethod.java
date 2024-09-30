package CoffeShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet; // Import ResultSet for generated keys
import java.sql.SQLException;
import java.util.List;

public class SalesManagementMethod { // Renamed class

    private sqlConnector dbConnector;

    public SalesManagementMethod() { // Constructor
        dbConnector = new sqlConnector();
    }

    // Method to add a new sale and return the generated sale ID
    public int addSale(int employeeId, String employeeName, double subtotal, double vat, double total, double amount, double amountChange, List<SaleItem> saleItems) {
        // Updated SQL query to include amount and amount_change
        String insertSaleQuery = "INSERT INTO tbl_sales (employee_id, employee_name, subtotal, vat, total, amount, amount_change) VALUES (?, ?, ?, ?, ?, ?, ?)";
        String insertSaleItemQuery = "INSERT INTO tbl_sales_items (sale_id, product_id, quantity, price, total_item_price) VALUES (?, ?, ?, ?, ?)"; // Include total_item_price

        int saleId = 0; // Initialize saleId

        try (Connection conn = dbConnector.createConnection()) {
            conn.setAutoCommit(false); // Start transaction

            // Insert sale
            try (PreparedStatement saleStmt = conn.prepareStatement(insertSaleQuery, PreparedStatement.RETURN_GENERATED_KEYS)) {
                saleStmt.setInt(1, employeeId);
                saleStmt.setString(2, employeeName);
                saleStmt.setDouble(3, subtotal);
                saleStmt.setDouble(4, vat);
                saleStmt.setDouble(5, total);
                saleStmt.setDouble(6, amount); // Set amount
                saleStmt.setDouble(7, amountChange); // Set amount_change
                saleStmt.executeUpdate();

                // Get the generated sale ID
                try (ResultSet generatedKeys = saleStmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        saleId = generatedKeys.getInt(1);
                    } else {
                        throw new SQLException("Creating sale failed, no ID obtained.");
                    }
                }

                // Insert sale items
                try (PreparedStatement itemStmt = conn.prepareStatement(insertSaleItemQuery)) {
                    for (SaleItem item : saleItems) {
                        itemStmt.setInt(1, saleId); // Set the sale ID
                        itemStmt.setInt(2, item.getProductId());
                        itemStmt.setInt(3, item.getQuantity());
                        itemStmt.setDouble(4, item.getPrice());
                        itemStmt.setDouble(5, item.getPrice() * item.getQuantity()); // Set total_item_price
                        itemStmt.addBatch(); // Add to batch
                    }
                    itemStmt.executeBatch(); // Execute all inserts at once
                }
            }

            conn.commit(); // Commit transaction
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions and possibly rollback
            try (Connection conn = dbConnector.createConnection()) {
                conn.rollback();
            } catch (SQLException rollbackEx) {
                rollbackEx.printStackTrace();
            }
        }
        
        return saleId; // Return the generated sale ID
    }
}
