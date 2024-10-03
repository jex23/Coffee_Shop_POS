package CoffeShop;

/**
 *
 * @author prince
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
