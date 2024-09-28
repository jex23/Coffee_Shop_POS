package CoffeShop;

import CoffeShop.sqlConnector;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ReportMethods {
    
    private sqlConnector connector; // Instance of sqlConnector

    public ReportMethods() {
        connector = new sqlConnector(); // Initialize the sqlConnector
    }

    // Method to get the sales report as a DefaultTableModel
    public DefaultTableModel getSalesReportModel() {
        String query = "SELECT * FROM tbl_sales";
        DefaultTableModel model = new DefaultTableModel(new String[]{"Sale ID", "Sale Date", "Employee Name", "Amount", "Change", "Subtotal", "VAT", "Total"}, 0);
        try (Connection conn = connector.createConnection(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
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
            JOptionPane.showMessageDialog(null, "Error retrieving sales report: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
        return model; // Return the model instead of displaying a new JFrame
    }

    // Method to get the sales items report as a DefaultTableModel
    public DefaultTableModel getSalesItemsReportModel() {
        String query = "SELECT * FROM tbl_sales_items";
        DefaultTableModel model = new DefaultTableModel(new String[]{"Sale Item ID", "Sale ID", "Quantity", "Price", "Total Item Price", "Sale Item Time"}, 0);
        try (Connection conn = connector.createConnection(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                Object[] row = {
                    rs.getInt("sale_item_id"),
                    rs.getInt("sale_id"),
                    rs.getInt("quantity"),
                    rs.getBigDecimal("price"),
                    rs.getBigDecimal("total_item_price"),
                    rs.getTimestamp("sale_item_time")
                };
                model.addRow(row);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Error retrieving sales items report: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
        return model; // Return the model instead of displaying a new JFrame
    }
}
