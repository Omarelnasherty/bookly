
## 📸 Screenshots

Below are some key screens from the **Bookly** app, showcasing its clean architecture and core features.

<p align="center">
  <img src="assets/images/1.png" width="300" style="max-width: 45%; margin-right: 10px;" alt="Clean Architecture" />
  <img src="assets/images/2.png" width="300" style="max-width: 45%;" alt="App Screens" />
</p>




# 📚 Bookly – Flutter Clean Architecture App
Bookly is a Flutter application built as a hands-on implementation of a complete mobile app UI from a Figma design. This project reflects a deep understanding of clean code principles, layered architecture, and professional app structure, making it an ideal showcase of applying theory into real development.

⚙️ The app is not a clone or a copy, but a structured, customized implementation based on a design — built from scratch as part of a personal learning journey focused on building scalable and maintainable Flutter apps.



## 🚀 Why This Project?
This project was developed as a practical application of knowledge gained through advanced Flutter training. It demonstrates how to:

* Convert Figma UI into real-world Flutter interfaces

* Apply the Clean Architecture pattern

* Write reusable, testable, and scalable code

* Build apps with real-world APIs (Google Books)

  
## ✨ Main Features
* 📖 Beautiful home layout with Featured and Newest books

* 📘 Book preview and details screen with smooth transitions

* 📱 Responsive layout supporting different screen sizes

* 🧠 Bloc/Cubit state management (flutter_bloc)

* 🌐 Integration with Google Books API

* 🧼 Organized with Clean Architecture & feature-first structure


## 🧠 Clean Architecture + Folder Structure

This project was built with a layered architecture in mind. The folder structure reflects a modular, testable, and scalable approach:
<pre> 
  +---lib
    |   constants.dart
    |   main.dart
    |
    +---core
    |   +---errors
    |   |       failures.dart
    |   |
    |   +---utils
    |   |   |   api_service.dart
    |   |   |   app_router.dart
    |   |   |   assets.dart
    |   |   |   service_locator.dart
    |   |   |   styles.dart
    |   |   |
    |   |   +---function
    |   |           custom_snack_bar.dart
    |   |           launch_url.dart
    |   |
    |   +---widgets
    |           custom_button.dart
    |           custom_error_widget.dart
    |           custom_loading_indicator.dart
    |
    +---Features
        +---home
        |   +---data
        |   |   +---models
        |   |   |   +---book_model
        |   |   |       access_info.dart
        |   |   |       book_model.dart
        |   |   |       ...
        |   |   +---repos
        |   |       home_repo.dart
        |   |       home_repo_impl.dart
        |   |
        |   +---presentation
        |       +---manger
        |       |   +---featured_books_cubit
        |       |   +---newest_books_cubit
        |       |   +---smila_books_cubit
        |       |
        |       +---views
        |       |   book_details_view.dart
        |       |   home_view.dart
        |       |
        |       +---widgets
        |           best_seller_list_view.dart
        |           book_details_view_body.dart
        |           ...
        |
        +---search
        |   +---presentation
        |       +---views
        |       |   search_view.dart
        |       +---widgets
        |           custom_search_text_field.dart
        |           search_view_body.dart
        |
        +---Splash
            +---presentation
                +---views
                |   splash_view.dart
                +---widgets
                    sliding_text.dart
                    splash_view_body.dart
</pre>

## 🚀 What Was Implemented
* ✅ Dependency injection using get_it
* ✅ API integration using Dio
* ✅ State management using Cubit
* ✅ Modular widgets and reusable components
* ✅ Navigation handled via a custom AppRouter
* ✅ Clean separation of logic and UI
* ✅ Professional UI implementation from Figma
* ✅ Loading, error, and empty states handling


## 🧪 How to Run
<pre>
git clone https://github.com/Omarelnasherty/bookly.git
cd bookly
flutter pub get
flutter run
</pre>





