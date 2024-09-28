package CoffeShop;

public class UserAuthenticate {
    private String username; // Can still be used as employee ID if needed
    private String name;
    private String role;
    private String imagePath;
    private String employeeId; // New field for employee ID

    // Constructor
    public UserAuthenticate(String employeeId, String username, String name, String role, String imagePath) {
        this.employeeId = employeeId; // Initialize employee ID
        this.username = username;
        this.name = name;
        this.role = role;
        this.imagePath = imagePath;
    }

    // Getters
    public String getUsername() {
        return username;
    }

    public String getName() {
        return name;
    }

    public String getRole() {
        return role;
    }

    public String getImagePath() {
        return imagePath;
    }

    public String getId() {
        return employeeId; // Return employee ID
    }
}
