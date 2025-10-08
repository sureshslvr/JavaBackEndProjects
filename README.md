# JavaBackEndProjects

This repository contains mini and major projects completed as part of the FLM training program, focusing on Java backend development.
***

## Mini Projects:
    - Thomos Travels
    - Console-Based Music Player

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

***
