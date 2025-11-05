package pojo;


import jakarta.persistence.*;

@Entity
@Table(name = "complaints")
public class Complaints {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int compliantId;
    private int userId;
    private String category;
    private String subject;
    private String description;
    private String status;

    public Complaints() {   }

    public Complaints(int compliantId, int userId, String category, String subject, String description, String status) {
        this.compliantId = compliantId;
        this.userId = userId;
        this.category = category;
        this.subject = subject;
        this.description = description;
        this.status = status;
    }

    public Complaints(int userId, String category, String subject, String description, String status) {
        this.userId = userId;
        this.category = category;
        this.subject = subject;
        this.description = description;
        this.status = status;
    }

    public int getCompliantId() {
        return compliantId;
    }

    public void setCompliantId(int compliantId) {
        this.compliantId = compliantId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
