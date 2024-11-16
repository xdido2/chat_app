# Chat App  

Welcome to **Chat App**, a real-time messaging application built using **Flutter** for the frontend and **Firebase** for the backend.  

## Features  
- **User Authentication**: Secure sign-up, login, and logout with Firebase Authentication.  
- **Real-Time Messaging**: Send and receive messages instantly.  
- **User List**: View a list of users you've had conversations with.  
- **Search Feature**: Find users to start a new chat.  
- **Responsive Design**: Seamless experience across different screen sizes.  

## Installation  

### Prerequisites  
- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)  
- Firebase project setup: [Firebase Setup Guide](https://firebase.google.com/docs/flutter/setup)  

### Steps  
1. Clone the repository:  
   ```bash  
   git clone https://github.com/your-username/chat-app.git  
   cd chat-app  
   ```  
2. Install dependencies:  
   ```bash  
   flutter pub get  
   ```  
3. Set up Firebase for the project:  
   - Add `google-services.json` (for Android) to the `android/app` directory.  
   - Add `GoogleService-Info.plist` (for iOS) to the `ios/Runner` directory.  

4. Run the app:  
   ```bash  
   flutter run  
   ```  

## Usage  

1. Open the app and sign up or log in with your credentials.  
2. Start chatting by selecting an existing conversation or searching for new users.  
3. Enjoy seamless, real-time communication!  

## Technologies Used  
- **Frontend**: Flutter (Dart)  
- **Backend**: Firebase  
  - Firebase Authentication  
  - Cloud Firestore  
  - Firebase Storage (optional, for media sharing)  

## Contribution  

Contributions are welcome! If you'd like to contribute:  
1. Fork the repository.  
2. Create a new branch:  
   ```bash  
   git checkout -b feature-name  
   ```  
3. Commit your changes:  
   ```bash  
   git commit -m "Add feature-name"  
   ```  
4. Push the branch:  
   ```bash  
   git push origin feature-name  
   ```  
5. Open a pull request.  

## License  

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.  

