## 🏡 Gated Community Management System

A simple yet powerful **web application** built using **Java, JSP, Servlets, Hibernate, and MySQL** to manage complaints in a gated community.
Residents can raise complaints, track their status, and view history, while admins can monitor and update complaint statuses.

---

### 📋 Features

#### 👩‍💼 **Resident**

* 🔹 Register and login securely
* 🔹 Raise new complaints
* 🔹 View all submitted complaints
* 🔹 Edit or delete complaints before resolution
* 🔹 View complaint history with status updates

#### 🧑‍💻 **Admin**

* 🔹 Login to admin dashboard
* 🔹 View all residents' complaints
* 🔹 Update complaint statuses (Pending / In Progress / Resolved)

---

### 🏗️ Project Architecture

```
📦 GatedCommunity/
│
├── 📁 src/
│   ├── 📁 pojo/                → Hibernate entity classes (e.g., Complaints.java, Resident.java)
│   ├── 📁 dao/                 → Data Access Objects for CRUD operations
│   ├── 📁 servlet/             → Servlets for handling requests & responses
│   └── 📁 util/                → Hibernate utility classes (HibernateUtil.java)
│
├── 📁 WebContent/
│   ├── 📁 jsp/ or pages/       → JSP pages (Login, Signup, Dashboards, etc.)
│   ├── 📁 WEB-INF/             → web.xml (Servlet mappings)
│   └── 📁 css/, js/, img/      → Optional static resources
│
├── 📄 pom.xml (if Maven used)
├── 📄 README.md
└── 📄 hibernate.cfg.xml        → Hibernate configuration (DB connection)
```

---

### ⚙️ Tech Stack

| Layer      | Technology                    |
| ---------- | ----------------------------- |
| Frontend   | JSP, HTML5, CSS3, Bootstrap 5 |
| Backend    | Java Servlets, Hibernate ORM  |
| Database   | MySQL                         |
| Server     | Apache Tomcat 10              |
| Build Tool | Maven (optional)              |

---

### 🗃️ Database Design

**Table: `complaints`**

| Column       | Type         | Description                      |
| ------------ | ------------ | -------------------------------- |
| complaint_id | INT (PK)     | Unique complaint ID              |
| user_id      | INT (FK)     | References resident              |
| category     | VARCHAR(100) | Complaint category               |
| subject      | VARCHAR(255) | Complaint subject                |
| description  | TEXT         | Complaint details                |
| status       | VARCHAR(50)  | pending / in_progress / resolved |

**Table: `residents`**

| Column        | Type         | Description        |
| ------------- | ------------ | ------------------ |
| resident_id   | INT (PK)     | Unique resident ID |
| resident_name | VARCHAR(100) | Name               |
| email         | VARCHAR(255) | Login email        |
| password      | VARCHAR(255) | Encrypted password |
| address       | VARCHAR(255) | Resident address   |
| phone_number  | VARCHAR(20)  | Contact number     |
| role          | VARCHAR(50)  | resident / admin   |

---

### 🚀 How to Run the Project

#### 1️⃣ Prerequisites

Make sure you have:

* Java JDK 17+
* Apache Tomcat 10+
* MySQL Server 8+
* Eclipse / IntelliJ IDE
* (Optional) Maven

#### 2️⃣ Database Setup

1. Create a new database in MySQL:

   ```sql
   CREATE DATABASE gated_community;
   ```
2. Update your `hibernate.cfg.xml` with your database credentials.
3. Hibernate will automatically create tables if mapping is correct.

#### 3️⃣ Import & Run

1. Import the project into Eclipse as a **Dynamic Web Project**.
2. Add Apache Tomcat 10 as the runtime.
3. Configure your database details in `hibernate.cfg.xml`.
4. Run the project on the server.

---

### 🧭 Application Flow

| Action              | JSP                                 | Servlet                              | Function                     |
| ------------------- | ----------------------------------- | ------------------------------------ | ---------------------------- |
| Resident Signup     | `signup.jsp`                        | `SignupServlet`                      | Register new resident        |
| Resident Login      | `login.jsp`                         | `LoginServlet`                       | Authenticate user            |
| Raise Complaint     | `RaiseComplaint.jsp`                | `RaiseComplaintServlet`              | Submit new complaint         |
| View Complaints     | `ResidentViewComplaintsServlet`     | -                                    | Display complaints list      |
| Edit Complaint      | `ResidentEditComplaintServlet`      | `ResidentEditedComplaintServlet`     | Update complaint details     |
| Delete Complaint    | `ResidentDeleteComplaintServlet`    | -                                    | Remove complaint             |
| Admin Dashboard     | `AdminDashboard.jsp`                | -                                    | Show admin options           |
| View All Complaints | `AdminViewAllComplaintsServlet`     | -                                    | Admin view of all complaints |
| Update Status       | `AdminUpdateComplaintStatusServlet` | `AdminUpdatedComplaintStatusServlet` | Modify complaint status      |

---

### 🎨 UI Overview (Bootstrap-based)

* Clean, centered layouts with soft gradient backgrounds 🌈
* Responsive forms and tables
* Color-coded buttons (Edit = Green, Delete = Red, etc.)
* Consistent design for Admin & Resident sections

---

### 🧠 Concepts Covered

✅ Java Servlet lifecycle
✅ JSP scripting elements & expressions
✅ MVC pattern (Model-View-Controller)
✅ Hibernate ORM (Entity, SessionFactory, CRUD)
✅ Session management (login/logout)
✅ MySQL integration with Hibernate
✅ Bootstrap for modern UI


### 🤝 Contributing

You can fork the repo and create pull requests for improvements —
like adding validation, search filters, or pagination.

---
