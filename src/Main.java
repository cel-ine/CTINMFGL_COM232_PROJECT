import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {
    @Override
    public void start(Stage primaryStage) {
        System.out.println("Application started!"); 

        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("introsplash.fxml"));
            Parent root = loader.load();

            System.out.println("introsplash.fxml loaded!");

            SplashController controller = loader.getController();
            controller.setStage(primaryStage); 

            Scene scene = new Scene(root, 900, 600);
            primaryStage.setScene(scene);
            primaryStage.show();
            System.out.println("Splash screen displayed!");  
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error loading introsplash.fxml");  
        }
    }

    public static void main(String[] args) {
        System.out.println("Launching application...");  // Debug print
        launch(args);
    }
}
