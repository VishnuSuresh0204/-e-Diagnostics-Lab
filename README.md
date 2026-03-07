# E-Diagnostics Lab Management System

A premium, modern web application for managing diagnostic laboratories, test bookings, sample collection, and financial transactions. Built with Django and featuring a sleek, responsive design with glassmorphism aesthetics.

## 🚀 Features

### 👤 User Portal
- **Dashboard**: Modern overview of health and active bookings.
- **Lab Discovery**: Browse registered laboratories and available diagnostic tests.
- **Slot Booking**: Interactive scheduling system for home sample collection.
- **Secure Payments**: Integrated payment tracking and history.
- **Reports**: Download diagnostic reports once processed by the lab.

### 🧪 Laboratory Management
- **Test Management**: Add, update, and manage available diagnostic tests and pricing.
- **Slot Monitoring**: Manage collection slots and view daily schedules.
- **Collector Assignment**: Assign specific collectors to user bookings.
- **Report Upload**: Digital report delivery system for customers.

### 🛡️ Administrative Suite
- **Platform Control**: Manage registered clients, laboratories, and staff.
- **Financial Oversight**: Monitor all platform-wide payments and transactions.
- **Test Oversight**: Global management of all diagnostic tests available on the platform.
- **Approval System**: Secure approval/blocking workflow for all user types.

### 📦 Collection Personnel
- **Assignment View**: Real-time view of assigned collection tasks.
- **Status Updates**: Track and update the progress of sample collections.

## 🛠️ Tech Stack

- **Backend**: Django (Python)
- **Database**: SQLite3
- **Frontend**: HTML5, CSS3 (Custom Glassmorphism UI), JavaScript, Bootstrap 5
- **Icons**: FontAwesome 6+
- **Typography**: Nunito Sans (Google Fonts)

## 📋 Installation & Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/VishnuSuresh0204/-e-Diagnostics-Lab.git
   cd -e-Diagnostics-Lab
   ```

2. **Create a virtual environment**:
   ```bash
   python -m venv env
   .\env\Scripts\activate  # On Windows
   source env/bin/activate  # On macOS/Linux
   ```

3. **Install dependencies**:
   ```bash
   pip install django
   ```

4. **Run migrations**:
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

5. **Start the server**:
   ```bash
   python manage.py runserver
   ```
   Access the application at `http://127.0.0.1:8000/`.

## 🎨 Design Philosophy
The application follows a **Premium Glassmorphism** aesthetic, utilizing:
- Frosted glass backdrops for cards and forms.
- Vibrant, modern gradients (Purple to Blue).
- Smooth entry animations (`animate-up`).
- Concise, iconography-driven data presentation.

---
*Developed by [Vishnu Suresh](https://github.com/VishnuSuresh0204)*
