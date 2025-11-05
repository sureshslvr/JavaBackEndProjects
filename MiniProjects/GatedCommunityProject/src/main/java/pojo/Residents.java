package pojo;

import jakarta.persistence.*;

@Entity
@Table(name = "residents")
public class Residents {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int residentId;
    private String residentName;
    private  String residentEmail;
    private String residentPassword;
    private String residentAddress;
    private String phoneNumber;
    private  String role;

    public Residents() {    }

    public Residents(int residentId, String residentName, String residentEmail, String residentPassword, String residentAddress, String phoneNumber, String role) {
        this.residentId = residentId;
        this.residentName = residentName;
        this.residentEmail = residentEmail;
        this.residentPassword = residentPassword;
        this.residentAddress = residentAddress;
        this.phoneNumber = phoneNumber;
        this.role = role;
    }

    public Residents(String residentName, String residentEmail, String residentPassword, String residentAddress, String phoneNumber, String role) {
        this.residentName = residentName;
        this.residentEmail = residentEmail;
        this.residentPassword = residentPassword;
        this.residentAddress = residentAddress;
        this.phoneNumber = phoneNumber;
        this.role = role;
    }

    public int getResidentId() {
        return residentId;
    }

    public void setResidentId(int residentId) {
        this.residentId = residentId;
    }

    public String getResidentName() {
        return residentName;
    }

    public void setResidentName(String residentName) {
        this.residentName = residentName;
    }

    public String getResidentEmail() {
        return residentEmail;
    }

    public void setResidentEmail(String residentEmail) {
        this.residentEmail = residentEmail;
    }

    public String getResidentPassword() {
        return residentPassword;
    }

    public void setResidentPassword(String residentPassword) {
        this.residentPassword = residentPassword;
    }

    public String getResidentAddress() {
        return residentAddress;
    }

    public void setResidentAddress(String residentAddress) {
        this.residentAddress = residentAddress;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
