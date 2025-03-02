import java.time.LocalDate;
import java.time.LocalTime;

public class AdminPlannedDrives {
    private int plannedDriveID;
    private int account_id;
    private LocalDate plannedDate;  
    private LocalTime plannedTime;  
    private String startLoc;
    private String pinnedLoc; 

    public AdminPlannedDrives(int plannedDriveID, int account_id, LocalDate plannedDate, LocalTime plannedTime, String startLoc, String pinnedLoc) {
        this.plannedDriveID = plannedDriveID;
        this.account_id = account_id;
        this.plannedDate = plannedDate;
        this.plannedTime = plannedTime;
        this.startLoc = startLoc;
        this.pinnedLoc = pinnedLoc;
    }

    public AdminPlannedDrives(int account_id, LocalDate plannedDate, LocalTime plannedTime, String startLoc, String pinnedLoc) {
    
        this.account_id = account_id;
        this.plannedDate = plannedDate;
        this.plannedTime = plannedTime;
        this.startLoc = startLoc;
        this.pinnedLoc = pinnedLoc;
    }

    public int getPlannedDriveID() {
        return plannedDriveID;
    }

    public int getAccount_id() {
        return account_id;
    }

    public LocalDate getPlannedDate() {  
        return plannedDate;
    }

    public LocalTime getPlannedTime() {  
        return plannedTime;
    }

    public String getStartLoc() {
        return startLoc;
    }

    public String getPinnedLoc() {
        return pinnedLoc;
    }

    public void setPlannedDriveID(int plannedDriveID) {
        this.plannedDriveID = plannedDriveID;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public void setPlannedDate(LocalDate plannedDate) {  // Updated to LocalDate
        this.plannedDate = plannedDate;
    }

    public void setPlannedTime(LocalTime plannedTime) {  // Updated to LocalTime
        this.plannedTime = plannedTime;
    }

    public void setStartLoc(String startLoc) {
        this.startLoc = startLoc;
    }

    public void setPinnedLoc(String pinnedLoc) {
        this.pinnedLoc = pinnedLoc;
    }

    // public void setEndLocation(String endLoc) {
    //     // TODO Auto-generated method stub
    //     throw new UnsupportedOperationException("Unimplemented method 'setEndLocation'");
    // }
}
