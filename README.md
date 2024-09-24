---

# Project Management Application

## Overview

This project is a comprehensive project management system designed with multiple roles: **User**, *
*Supervisor**, and **Admin**. Each role has specific permissions and tasks, ensuring smooth project
collaboration and management.

## Roles & Functionalities

### User:

- **Registration and Login**: Users can register and log in via a verification code sent to their
  email.
- **Profile Management**: Add and modify personal accounts (GitHub, LinkedIn, etc.) and upload a CV.
- **Project Management**:
    - View all projects assigned by a supervisor or admin.
    - Add members to the project using user IDs.
    - Add project-related links (GitHub, Figma, video, APK, etc.).
    - Edit project details (name, description, links).
    - Display a QR code for project evaluation.
    - View project evaluations when available.

### Supervisor:

- **Login**: Log in via email and a verification code.
- **Profile Management**: Add and edit personal accounts and upload a CV.
- **Project Management**:
    - Manage all assigned projects (add members, links, modify details).
    - Add new projects and assign them to users.
    - Delete personal projects (non-public ones).
    - View project evaluations.

### Admin:

- **Profile Management**: Add and edit personal accounts and upload a CV.
- **Project Management**:
    - View and manage all projects created by supervisors and themselves.
    - Add and assign new projects to users.
    - Modify project details, links, and permissions.
    - Delete private projects.
    - Change user roles (e.g., promote a user to a supervisor).

## Screenshot
<img src="./assets/screens/login_screen.jpeg" width="300"/>
<img src="./assets/screens/otp_screen.jpeg" width="300"/>
<img src="./assets/screens/user_screen.jpeg" width="300"/>
<img src="./assets/screens/my_project.jpeg" width="300"/>

## API Documentation

The project uses the following API hosted
at: [https://tuwaiq-gallery.onrender.com](https://tuwaiq-gallery.onrender.com)

Below is a summary of key API calls:

### Authentication:

- **POST /v1/auth/create/new/account**: Create a new user account.
- **POST /v1/auth/login**: User login.
- **POST /v1/auth/verify**: Verify email with OTP.

### Profile Management:

- **GET /v1/user/profile**: Retrieve the user profile.
- **PUT /v1/user/update/profile**: Update user profile data.

### Project Management:

- **PUT /v1/user/edit/project/base/{id}**: Update project base details.
- **PUT /v1/user/edit/project/members/{id}**: Update project members.
- **PUT /v1/user/edit/project/link/{id}**: Update project links (GitHub, Figma, etc.).

### Admin Functions:

- **PUT /v1/admin/change/role/user**: Change the role of a user (e.g., promote to supervisor).

### More API Details:

For further API details and the full list of available endpoints, please refer to
the [API Documentation](https://tuwaiq-gallery.onrender.com).

## Project Structure

```
src/
├── cubit/
├── data_layer/
├── helper/
├── models/
├── networking/
├── screens/
├── widgits/
└── main.dart
```

- **cubit/**: Contains state management logic using the Cubit architecture.
- **data_layer/**: Handles data fetching, repositories, and data persistence.
- **helper/**: Utility classes and helper functions used throughout the project.
- **models/**: Contains data models used to structure the application’s data.
- **networking/**: Handles API calls and network-related functionalities.
- **screens/**: UI screens for different sections of the application.
- **widgits/**: Reusable widgets used across various screens.
- **main.dart**: The entry point of the application.

## Packages Used

The following Flutter packages are utilized within the application:

- **flutter_image_stack**: ^0.0.7 – For displaying stacked images.
- **pinput**: ^5.0.0 – PIN input fields for OTP and verification codes.
- **dio**: ^5.7.0 – HTTP client for network requests.
- **url_launcher**: ^6.3.0 – Launch URLs within the app.
- **intl**: ^0.19.0 – Internationalization and localization support.
- **device_preview**: ^1.2.0 – Preview app in different device settings.
- **loading_animation_widget**: ^1.2.1 – Loading animation widgets.
- **flutter_bloc**: ^8.1.6 – State management using Bloc.
- **get_it**: ^7.7.0 – Dependency injection.
- **flutter_rating_bar**: ^4.0.1 – Rating bar widget for project ratings.
- **shared_preferences**: ^2.3.2 – Data persistence for simple key-value pairs.
- **file_picker**: ^8.1.2 – File picker for uploading documents (e.g., CVs).
- **image_picker**: ^1.1.2 – Image picker for uploading images.
- **carousel_slider**: ^5.0.0 – Carousel slider widget.
- **qr_flutter**: ^4.1.0 – Generate QR codes within the app.
- **mobile_scanner**: ^5.2.3 – Mobile scanner for scanning QR codes and barcodes.
- **custom_rating_bar**: ^3.0.0 – Customizable rating bar for project ratings.

## How to Run the Project

### Prerequisites

To run this project, make sure you have the following installed:

- **Flutter SDK**: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- **Dart SDK**: Installed automatically with Flutter.
- **Code Editor**: Recommended [Visual Studio Code](https://code.visualstudio.com/)
  or [Android Studio](https://developer.android.com/studio).

### Steps to Run

1. **Clone the repository**:
   ```
   git clone https://github.com/your-repo/project-7.git
   cd project-management-app
   ```

2. **Install dependencies**:
   Run the following command to install the required dependencies for the project:
   ```
   flutter pub get
   ```

3. **Set up environment variables**:
   Create a `.env` file in the root directory and add any required API keys or URLs. For example:
   ```
   API_URL=https://tuwaiq-gallery.onrender.com
   ```

4. **Run the app**:
   Connect your device or start an emulator, then run the following command to launch the app:
   ```
   flutter run
   ```

5. **For Web**:
   You can also run the app on the web by running:
   ```
   flutter run -d chrome
   ```

6. **Build the app**:
   To build the app for Android or iOS, use the following commands:
    - For Android:
      ```
      flutter build apk
      ```
    - For iOS:
      ```
      flutter build ios
      ```

7. **Testing and Debugging**:
    - Use the `Flutter DevTools` for debugging and profiling the app.
    - Run the app with `flutter run --debug` to see verbose logs.

## Wondorful Team

- Mahdi Alhelal
- Fahad Alharbi

---

