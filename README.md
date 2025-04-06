# Flutter Project

![Project Logo](assets/logo.png)

## Introduction

This is a Flutter project built using Dart to create a cross-platform mobile application. The project supports both iOS and Android platforms and follows the best practices for Flutter development.

## Features

- Cross-platform compatibility (iOS & Android)
- Responsive UI
- State management


## Screenshots

Here are some screenshots of the app:

![Screenshot 1](assets/images/app_screenshot/Screenshot_1.png)
![Screenshot 2](ssets/images/app_screenshot/Screenshot_2.png)

## Getting Started

### Prerequisites

Make sure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart
- Android Studio or Visual Studio Code (with Flutter plugin)
- Xcode (for iOS development)

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/flutter-project.git
   ```
2. Navigate to the project directory:
   ```sh
   cd flutter-project
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the application:
   ```sh
   flutter run
   ```

## Folder Structure

```
flutter-project/
│── lib/
│   ├── main.dart      # Entry point of the application
│   ├── screens/       # UI screens
│   ├── widgets/       # Reusable UI components
│   ├── models/        # Data models
│   ├── services/      # API services
│   ├── providers/     # State management
│── assets/            # Images and other assets
│── pubspec.yaml       # Dependencies
│── README.md          # Project documentation
```

## Dependencies

This project uses the following dependencies:

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
  http: ^0.13.4
  shared_preferences: ^2.0.6
```

## Running Tests

To run unit tests, execute:

```sh
flutter test
```


## License

This project is licensed under the MIT License.

