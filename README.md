# JavaBackEndProjects

This repository contains mini and major projects completed as part of the FLM training program, focusing on Java backend development.
***

## Mini Projects:
    - Thomos Travels
    - Console-Based Music Player
    - Gated Community Management System

### 1. Thomas Travels - Driver Travel Management System

**Project Description:**  
Thomas Travels aims to automate their customer travel service process by managing driver data and their travel details efficiently.

**Problem Statement:**  
Each driver has the following attributes:  
- Driver ID  
- Driver Name  
- Driver Category (Auto/Car/Lorry)  
- Total Distance Traveled  

The system involves two main classes:

- **Driver:** Represents a driver with the above attributes.  
- **Travel:** Contains methods to perform operations such as checking driver category, retrieving driver info by ID, counting drivers by category, listing drivers by category, and finding the driver who traveled the maximum distance.

**Key Functionalities:**  
- `isCarDriver(Driver)`: Checks if the driver belongs to the "Car" category.  
- `retriveByDriverId(ArrayList<Driver>, driverId)`: Returns formatted details of the driver matching the given ID.  
- `retriveCountOfDriver(ArrayList<Driver>, category)`: Returns count of drivers belonging to a specified category.  
- `retriveDriver(ArrayList<Driver>, category)`: Returns a list of drivers of a specified category.  
- `retriveMaximumDistanceTravelledDriver(ArrayList<Driver>)`: Returns the driver who has traveled the maximum distance.  

**Testing:**  
TestDriver class with a main method tests all the above functionalities using Driver objects.

***

### 2. Console-Based Music Player Using Java OOP

**Project Description:**  
A console-driven music player simulation that applies core Object-Oriented Programming principles in Java such as encapsulation, abstraction, inheritance, and polymorphism. It manages a music library and supports playlist creation and playback controls.

**Core Concepts Demonstrated:**  
- Encapsulation through private fields and public getters/setters (e.g., in the Song class).  
- Abstraction using interfaces (Playable interface to define playback operations).  
- Inheritance and Polymorphism via implementation and overriding of interface methods.  
- Use of Collections like ArrayList for dynamic song and playlist management.

**Class Overview:**  

- **Song:** Encapsulates song details (id, title, artist, duration).  
- **Playable Interface:** Defines playback methods (play, pause, stop) with song ID or title as parameters.  
- **Playlist:** Implements Playable interface with song management and playback control methods (add, remove songs, play, pause, stop).  
- **MusicPlayer:** Manages the entire song library and playlists with methods for adding, updating, deleting songs, playlist creation, and playback control.

**User Interaction:**  
Menu-driven console interface with options such as:  
1. Add New Song  
2. Update Existing Song  
3. Delete Song  
4. Display All Songs  
5. Create New Playlist  
6. Add Song to Playlist  
7. Display All Playlists  
8. Display Songs in Playlist  
9. Play Song in Playlist  
10. Pause Song in Playlist  
11. Stop Song in Playlist  
12. Exit  

Users can interact via numeric menu choices to perform the respective operations on songs and playlists.
---

### 3. Gated Community Management System (JSP + Servlets + Hibernate + MySQL)

**Project Description:**
A web-based application designed to manage resident complaints efficiently in a gated community.
Residents can raise complaints, track their progress, and view their complaint history, while admins can view all complaints and update their statuses.

**Core Objective:**
To automate and streamline the complaint registration and resolution process between residents and the admin team using a simple, responsive web interface.

**Key Modules:**

* **Resident Module:**

  * Register and log in.
  * Raise new complaints with category, subject, and description.
  * Edit or delete existing complaints before resolution.
  * View all current and historical complaints.

* **Admin Module:**

  * Log in to the admin dashboard.
  * View all complaints raised by residents.
  * Update complaint status (Pending, In Progress, Resolved).

**Technology Stack:**

* **Frontend:** JSP, HTML, CSS, Bootstrap 5
* **Backend:** Java Servlets, Hibernate ORM
* **Database:** MySQL
* **Server:** Apache Tomcat 10

**Core Concepts Demonstrated:**

* MVC (Model–View–Controller) architecture
* CRUD operations using Hibernate ORM
* JSP–Servlet interaction with request attributes
* Session management for user authentication
* Dynamic form handling and Bootstrap UI integration

**Database Tables:**

* **Residents:** Stores user information and role (resident/admin).
* **Complaints:** Stores complaint details, category, description, and status.

**User Roles:**

* **Resident:** Can raise, edit, view, or delete complaints.
* **Admin:** Can view and update complaint statuses.

**Outcome:**
Demonstrates practical integration of **Java backend technologies** with **Hibernate ORM and JSP**, providing a complete end-to-end workflow from database to frontend interface.

---

***
