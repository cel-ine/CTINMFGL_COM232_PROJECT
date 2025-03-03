import java.time.LocalDate;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class AddUserPopupController {
    @FXML private TextField emailField, usernameField, firstNameField, lastNameField;
    @FXML private PasswordField passwordField;
    @FXML private DatePicker birthdatePicker;
    @FXML private Button addUserBTN;

    private AdminHomepageController adminHomepageController;

    // Method to set the reference of AdminHomepageController
    public void setAdminHomepageController(AdminHomepageController adminHomepageController) {
        this.adminHomepageController = adminHomepageController;
    }

    @FXML
    private void handleAddUser(ActionEvent event) {
        String email = emailField.getText();
        String username = usernameField.getText();
        String password = passwordField.getText();
        LocalDate birthdate = (birthdatePicker.getValue() != null) ? birthdatePicker.getValue() : null;
        String firstName = firstNameField.getText();
        String lastName = lastNameField.getText();

        if (email.isEmpty() || username.isEmpty() || password.isEmpty() || birthdate == null ||
            firstName.isEmpty() || lastName.isEmpty()) {
            showAlert("Warning", "Please fill in all fields.", Alert.AlertType.WARNING);
            return;
        }

        if (!isValidEmail(email)) {
            showAlert("Invalid Email", "Please enter a valid email address.", Alert.AlertType.WARNING);
            return;
        }

        if (AdminService.isDuplicateEmail(email, -1)) { // -1 means it's a new user (not updating)
            showAlert("Duplicate Email", "This email is already in use. Please use another one.", Alert.AlertType.WARNING);
            return;
        }
        if (AdminService.isDuplicateUsername(username, -1)) {
            showAlert("Duplicate Username", "This username is already taken. Choose a different one.", Alert.AlertType.WARNING);
            return;
        }

        if (birthdate != null && !birthdate.isBefore(LocalDate.now())) {
            showAlert("Invalid Birthdate", "Please input a valid birthdate.", Alert.AlertType.WARNING);
            return;
        }

        AdminUser newUser = new AdminUser(email, username, password, birthdate, firstName, lastName);
        boolean success = AdminService.addUser(newUser);

        if (success) {
            showSuccessPopup();
            closeWindow();
            if (adminHomepageController != null) {
                adminHomepageController.loadAccountManagerData();
            }
        } else {
            showAlert("Error", "Failed to add user. Please try again.", Alert.AlertType.ERROR);
        }
    }


    private boolean isValidEmail(String email) {
        String emailRegex = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$";
        return email.matches(emailRegex);
    }

    private void showSuccessPopup() {
        showAlert("Success", "User added successfully!", Alert.AlertType.INFORMATION);
    }

    private void showAlert(String title, String message, Alert.AlertType alertType) {
        Alert alert = new Alert(alertType);
        alert.setTitle(title);
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.showAndWait();
    }
    private void closeWindow() {
        Stage stage = (Stage) addUserBTN.getScene().getWindow();
        stage.close();
    }
}