package CoffeShop;

import CoffeShop.sqlConnector;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author James
 */
public class ReportMethods {
    
    private sqlConnector connector; // Instance of sqlConnector

    public ReportMethods() {
        connector = new sqlConnector(); // Initialize the sqlConnector
    }

    // Method to get the sales report as a DefaultTableModel
    public DefaultTableModel getSalesReportModel() {
        String query = "SELECT * FROM tbl_sales";
        DefaultTableModel model = new DefaultTableModel(new String[]{
            "Sale ID", "Sale Date", "Employee Name", "Amount", "Change", 
            "Subtotal", "VAT", "Total"
        }, 0);
        
        try (Connection conn = connector.createConnection(); 
             Statement stmt = conn.createStatement(); 
             ResultSet rs = stmt.executeQuery(query)) {
             
            while (rs.next()) {
                Object[] row = {
                    rs.getInt("sale_id"),
                    rs.getTimestamp("sale_date"),
                    rs.getString("employee_name"),
                    rs.getBigDecimal("amount"),
                    rs.getBigDecimal("amount_change"),
                    rs.getBigDecimal("subtotal"),
                    rs.getBigDecimal("vat"),
                    rs.getBigDecimal("total")
                };
                model.addRow(row);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, 
                "Error retrieving sales report: " + e.getMessage(), 
                "Error", 
                JOptionPane.ERROR_MESSAGE
            );
        }
        return model; // Return the model instead of displaying a new JFrame
    }

    // Method to get the sales items report as a DefaultTableModel, including product name and category
    public DefaultTableModel getSalesItemsReportModel() {
        String query = "SELECT si.sale_item_id, si.sale_id, p.product_name, p.product_category, si.quantity, si.price, si.total_item_price, si.sale_item_time " +
                       "FROM tbl_sales_items si " +
                       "JOIN tbl_products p ON si.product_id = p.product_id"; // Assuming product_id links both tables

        DefaultTableModel model = new DefaultTableModel(new String[]{
            "Sale Item ID", "Sale ID", "Product Name", "Product Category", "Quantity", "Price", 
            "Total Item Price", "Sale Item Time"
        }, 0);

        try (Connection conn = connector.createConnection(); 
             Statement stmt = conn.createStatement(); 
             ResultSet rs = stmt.executeQuery(query)) {
             
            while (rs.next()) {
                Object[] row = {
                    rs.getInt("sale_item_id"),
                    rs.getInt("sale_id"),
                    rs.getString("product_name"), // Fetch product name
                    rs.getString("product_category"), // Fetch product category
                    rs.getInt("quantity"),
                    rs.getBigDecimal("price"),
                    rs.getBigDecimal("total_item_price"),
                    rs.getTimestamp("sale_item_time")
                };
                model.addRow(row);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, 
                "Error retrieving sales items report: " + e.getMessage(), 
                "Error", 
                JOptionPane.ERROR_MESSAGE
            );
        }
        return model; // Return the model instead of displaying a new JFrame
    }

    // Method to calculate total sales based on a given period (daily, weekly, monthly, yearly, or all-time)
    public BigDecimal calculateTotalSales(String period) {
        String query;
        switch (period) {
            case "Daily":
                query = "SELECT SUM(total) FROM tbl_sales WHERE DATE(sale_date) = CURDATE()"; // For today's sales
                break;
            case "Weekly":
                query = "SELECT SUM(total) FROM tbl_sales WHERE YEARWEEK(sale_date, 1) = YEARWEEK(CURDATE(), 1)"; // Current week's sales
                break;
            case "Monthly":
                query = "SELECT SUM(total) FROM tbl_sales WHERE MONTH(sale_date) = MONTH(CURDATE()) AND YEAR(sale_date) = YEAR(CURDATE())"; // Current month's sales
                break;
            case "Yearly":
                query = "SELECT SUM(total) FROM tbl_sales WHERE YEAR(sale_date) = YEAR(CURDATE())"; // Current year's sales
                break;
            case "All":
                query = "SELECT SUM(total) FROM tbl_sales"; // Total sales without any date filtering
                break;
            default:
                return BigDecimal.ZERO; // Return zero if no valid period is selected
        }

        try (Connection conn = connector.createConnection(); 
             Statement stmt = conn.createStatement(); 
             ResultSet rs = stmt.executeQuery(query)) {
             
            if (rs.next()) {
                return rs.getBigDecimal(1) != null ? rs.getBigDecimal(1) : BigDecimal.ZERO; // Return total or zero if null
            }
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, 
                "Error retrieving total sales: " + e.getMessage(), 
                "Error", 
                JOptionPane.ERROR_MESSAGE
            );
        }
        return BigDecimal.ZERO; // Fallback in case of error
    }

    // Method to calculate the best-selling product based on the selected period
   public void getBestSellerProduct(String period, 
                                  JLabel coffeeBeSLProductNameText, 
                                  JLabel coffeeBeSLQuantityText, 
                                  JLabel teaBeSLProductNameText, 
                                  JLabel teaBeSLQuantityText, 
                                  JLabel snacksBeSLProductNameText, 
                                  JLabel snacksBeSLQuantityText)   {
        
        String[] categories = {"Coffee", "Tea", "Snacks"};
        
        for (String category : categories) {
            String query = String.format(
                "SELECT p.product_name, SUM(si.quantity) AS total_quantity " +
                "FROM tbl_sales_items si " +
                "JOIN tbl_products p ON si.product_id = p.product_id " +
                "WHERE p.product_category = '%s' AND %s " +
                "GROUP BY p.product_name " +
                "ORDER BY total_quantity DESC " +
                "LIMIT 1", category, getDateCondition(period));

            try (Connection conn = connector.createConnection(); 
                 Statement stmt = conn.createStatement(); 
                 ResultSet rs = stmt.executeQuery(query)) {

                if (rs.next()) {
                    String productName = rs.getString("product_name");
                    int totalQuantity = rs.getInt("total_quantity");

                    switch (category) {
                        case "Coffee":
                            coffeeBeSLProductNameText.setText(productName);
                            coffeeBeSLQuantityText.setText(String.valueOf(totalQuantity));
                            break;
                        case "Tea":
                            teaBeSLProductNameText.setText(productName);
                            teaBeSLQuantityText.setText(String.valueOf(totalQuantity));
                            break;
                        case "Snacks":
                            snacksBeSLProductNameText.setText(productName);
                            snacksBeSLQuantityText.setText(String.valueOf(totalQuantity));
                            break;
                    }
                } else {
                    // Clear the text fields if no result
                    switch (category) {
                        case "Coffee":
                            coffeeBeSLProductNameText.setText("");
                            coffeeBeSLQuantityText.setText("0");
                            break;
                        case "Tea":
                            teaBeSLProductNameText.setText("");
                            teaBeSLQuantityText.setText("0");
                            break;
                        case "Snacks":
                            snacksBeSLProductNameText.setText("");
                            snacksBeSLQuantityText.setText("0");
                            break;
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
                JOptionPane.showMessageDialog(null, 
                    "Error retrieving best seller product for " + category + ": " + e.getMessage(), 
                    "Error", 
                    JOptionPane.ERROR_MESSAGE
                );
            }
        }
    }

    // Helper method to create date condition based on the selected period
    private String getDateCondition(String period) {
        switch (period) {
            case "Daily":
                return "DATE(si.sale_item_time) = CURDATE()"; // For today's sales
            case "Weekly":
                return "YEARWEEK(si.sale_item_time, 1) = YEARWEEK(CURDATE(), 1)"; // Current week's sales
            case "Monthly":
                return "MONTH(si.sale_item_time) = MONTH(CURDATE()) AND YEAR(si.sale_item_time) = YEAR(CURDATE())"; // Current month's sales
            case "Yearly":
                return "YEAR(si.sale_item_time) = YEAR(CURDATE())"; // Current year's sales
            case "All":
                return "1=1"; // No date filtering
            default:
                return "1=1"; // Fallback to no date filtering
        }
    }

    // New method to refresh the best-selling products
   public void refreshBestSellers(String period,
                                JLabel coffeeBeSLProductNameText, 
                                JLabel coffeeBeSLQuantityText,
                                JLabel teaBeSLProductNameText, 
                                JLabel teaBeSLQuantityText,
                                JLabel snacksBeSLProductNameText, 
                                JLabel snacksBeSLQuantityText) {
    // Call the existing method to get the best seller products
    getBestSellerProduct(period, coffeeBeSLProductNameText, coffeeBeSLQuantityText, 
                         teaBeSLProductNameText, teaBeSLQuantityText, 
                         snacksBeSLProductNameText, snacksBeSLQuantityText);
}
}
