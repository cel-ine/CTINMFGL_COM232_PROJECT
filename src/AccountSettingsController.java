import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.time.LocalDate;
import java.util.Optional;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.DatePicker;
import javafx.scene.control.MenuButton;
import javafx.scene.control.MenuItem;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

public class AccountSettingsController implements Initializable {
    @FXML private ImageView accountSettingsImageView1;
    @FXML private ImageView accountSettingsImageView2;
    @FXML private TextField emailField, usernameField, passwordField, firstNameField, lastNameField;
    @FXML private DatePicker birthdayPicker;
    @FXML private Button deleteAccountButton;
    @FXML private ImageView accountSettingsImageView;
    @FXML private MenuButton menuBTN;
    @FXML private MenuItem SignOutBTN;
    
    private AdminHomepageController adminHomepageController;
    private final AdminService adminService = new AdminService(); //for CRUD save and delete 
    private String loggedInUsername;
    private String imagePath;
    private AdminUser currentUser;
    
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        System.out.println("FXML loaded, currentUser: " + currentUser);
    }
    
    public void setUserData(String username, String imagePath) {
        this.loggedInUsername = username;
        this.imagePath = imagePath;
        menuBTN.setText(username);
        if (imagePath != null && !imagePath.isEmpty()) {
            Image newImage = new Image(imagePath);
            accountSettingsImageView1.setImage(newImage);
            accountSettingsImageView2.setImage(newImage);
        }
        // Initialize currentUser here
        currentUser = adminService.getUserByUsername(username);
        initializeAccountDetails();
    }
    
    public void initializeAccountDetails() {
        System.out.println("1. Entering initializeAccountDetails");
        if (currentUser != null) {
            System.out.println("2. Current user: " + currentUser);
            System.out.println("3. User is not null, setting text fields");
            System.out.println("4. Username from database: " + currentUser.getUsername());
            
            usernameField.setPromptText("Username: " + currentUser.getUsername());
            usernameField.setText(currentUser.getUsername());
           
            emailField.setPromptText("Email: " + currentUser.getEmail());
            emailField.setText(currentUser.getEmail());
            
            passwordField.setPromptText("Password: " + currentUser.getPassword());
            passwordField.setText(currentUser.getPassword());
           
            firstNameField.setPromptText("First Name: " + currentUser.getFirstName());
            firstNameField.setText(currentUser.getFirstName());
            
            lastNameField.setPromptText("Last Name: " + currentUser.getLastName());
            lastNameField.setText(currentUser.getLastName());
            
            birthdayPicker.setValue(currentUser.getBirthDate());
            
            System.out.println("5. Text field values after setting:");
            System.out.println("   Username: " + usernameField.getText());
            System.out.println("   Email: " + emailField.getText());
            System.out.println("   Password: " + passwordField.getText());
            System.out.println("   First Name: " + firstNameField.getText());
            System.out.println("   Last Name: " + lastNameField.getText());
        } else {
            System.out.println("3. User is null!");
        }
    }
    
    @FXML
    private void handleSaveAccountDetails(ActionEvent event) {
        if (validateInput()) {
            String email = emailField.getText().trim();

            if (!email.matches("^[A-Za-z0-9._%+-]+@(gmail\\.com|yahoo\\.com)$")) {
                showErrorAlert("Please input a valid Email. Only Gmail and Yahoo addresses are allowed.");
                return; 
            }

            if (birthdayPicker.getValue() != null) {
                LocalDate birthdate = birthdayPicker.getValue();
                if (!birthdate.isBefore(LocalDate.now())) {
                    showErrorAlert("Please select a valid Birthdate. Birthdate cannot be today or in the future.");
                    return;
                }
                currentUser.setBirthDate(birthdate);
            }

            if (!usernameField.getText().isEmpty()) {
                currentUser.setUsername(usernameField.getText());
            }
            if (!emailField.getText().isEmpty()) {
                currentUser.setEmail(emailField.getText());
            }
            if (!passwordField.getText().isEmpty()) {
                currentUser.setPassword(passwordField.getText());
            }
            if (!firstNameField.getText().isEmpty()) {
                currentUser.setFirstName(firstNameField.getText());
            }
            if (!lastNameField.getText().isEmpty()) {
                currentUser.setLastName(lastNameField.getText());
            }

            boolean success = AdminService.updateUser(currentUser);
            if (success) {
                showSuccessAlert("Account details updated successfully!");
                updatePromptText();
            } else {
                showErrorAlert("Failed to update account details");
            }
        }
    }
    
    
    private void updatePromptText() {
        usernameField.setPromptText("Username: " + currentUser.getUsername());
        emailField.setPromptText("Email: " + currentUser.getEmail());
        passwordField.setPromptText("Password: " + currentUser.getPassword());
        firstNameField.setPromptText("First Name: " + currentUser.getFirstName());
        lastNameField.setPromptText("Last Name: " + currentUser.getLastName());
    }
    
    @FXML
    private void handleDeleteAccount(ActionEvent event) throws IOException {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Confirm Delete");
        alert.setHeaderText("Are you sure you want to delete your account?");
        alert.setContentText("This action cannot be undone.");
        Optional<ButtonType> result = alert.showAndWait();
        
        if (result.isPresent() && result.get() == ButtonType.OK) {
            if (AdminService.deleteUser(currentUser.getAccID())) {
                showSuccessAlert("Account deleted successfully!");
                handleSignOut(event);
            } else {
                showErrorAlert("Failed to delete account");
            }
        }
    }
    
    @FXML
    public void handleSignOut(ActionEvent event) throws IOException {
        Stage stage = (Stage) menuBTN.getScene().getWindow();
        stage.close();
        FXMLLoader loader = new FXMLLoader(getClass().getResource("Login.fxml"));
        Parent root = loader.load();
        Stage signInStage = new Stage();
        signInStage.setScene(new Scene(root));
        signInStage.show();
    }
    
    @FXML
    private void handleBackToHomepage(ActionEvent event) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("AdminHomePage.fxml"));
            Parent root = loader.load();
            AdminHomepageController homepageController = loader.getController();
            // Fetch the latest profile picture from the database
            String latestImagePath = adminService.loadProfilePicture(loggedInUsername);
            // Pass the updated image & username to AdminHomepage
            homepageController.setUserData(loggedInUsername, latestImagePath);
            Stage stage = (Stage) menuBTN.getScene().getWindow();
            stage.setScene(new Scene(root));
            stage.show();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    private boolean validateInput() {
        if (passwordField.getText().isEmpty()) {
            showErrorAlert("Password cannot be empty");
            return false;
        }
        return true;
    }
    
    @FXML
    private void handleImageUpload() {
        FileChooser fileChooser = new FileChooser();
        fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("Image Files", "*.png", "*.jpg", "*.jpeg"));
        File file = fileChooser.showOpenDialog(null);
        if (file != null) {
            String imagePath = file.toURI().toString();
            // Save to database
            boolean success = adminService.saveProfilePicture(loggedInUsername, imagePath);
            if (success) {
                // Update ImageView in Account Settings
                Image newImage = new Image(imagePath);
                accountSettingsImageView1.setImage(newImage);
                accountSettingsImageView2.setImage(newImage);
                // Notify Admin Homepage to update its images
                if (adminHomepageController != null) {
                    adminHomepageController.setUserData(loggedInUsername, imagePath);
                }
            } else {
                System.out.println("Failed to update profile picture in database.");
            }
        }
    }
    
    private void showSuccessAlert(String message) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Success");
        alert.setContentText(message);
        alert.showAndWait();
    }
    
    private void showErrorAlert(String message) {
        Alert alert = new Alert(Alert.AlertType.ERROR);
        alert.setTitle("Error");
        alert.setContentText(message);
        alert.showAndWait();
    }
    
    public void setAdminHomepageController(AdminHomepageController adminHomepageController) {
        this.adminHomepageController = adminHomepageController;
    }
}