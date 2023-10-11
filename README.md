# Drecipe - iOS and Android application 

Drecipe is Flutter-based mobile application for iOS and Android for suggesting culinary recipes which I developed for my bachelor's final thesis.

![drecipe](https://github.com/NoaTubic/drecipe/assets/62752909/075007b5-a66d-4445-b667-2f955674ed69)


## 🌟 Features

### Authentication
- Sign In & Sign Up
- Confirm Email
- Reset Password
- Sign Out
- Delete Account
- Sign In without an Account

### Recipe Discovery
- Discover recipes by meal type, popularity, and healthiness.
- Find recipes based on the time of the day and pairing meal.
- Get recommended recipes based on your favorites.

### Recipe Details
- View detailed recipe information.
- Comprehensive ingredient lists.
- Step-by-step cooking instructions, including descriptions, required ingredients, and necessary equipment.
- Add or remove recipes from your favorites.

### Search & Filters
- Search for recipes with various filters.
- Find recipes based on specific ingredients, with options to include or exclude certain ingredients.

### Favorite Recipes
- Browse and manage your favorite recipes.
- Remove recipes from your favorites.

### App Customization
- Change the app's language.
- Switch between different themes.

## 🛠️ Architecture & Libraries

- **Architecture**: The app follows the Clean Architecture principles and integrates with Flutter Riverpod.
- **State Management**: Managed with Riverpod.
- **Authentication**: Implemented using Firebase Auth.
- **Remote Database**: Cloud Firestore.
- **Local Database**: HiveDB.
- **API Integration**: The app communicates with the Spoonacular API using `retrofit`, `dio`, and `freezed`.
- **Environment Management**: Utilizes `flavorizr` for different build environments and `envied` for environment variables.
- **Navigation**: Handled by `auto_route`.
- **UI Enhancements**: Contains animations to enrich the user experience.

## 🚀 Getting Started

1. Clone the repository.
2. Navigate to the project directory.
3. Run `flutter pub get` to install dependencies.
4. Set up your environment variables with `envied` and add your Spoonacular API key.
5. Choose the desired build environment with `flavorizr`.
6. Run `flutter run` to start the application.


