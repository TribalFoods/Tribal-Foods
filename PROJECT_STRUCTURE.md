# Tribal Foods E-Commerce App

## Project Structure

```
TribalFoods/
├── Tribal-Foods/
│   ├── flutter_app/
│   │   ├── android/
│   │   ├── ios/
│   │   ├── lib/
│   │   │   ├── main.dart
│   │   │   ├── screens/
│   │   │   │   ├── login_screen.dart
│   │   │   │   ├── home_screen.dart
│   │   │   │   ├── product_listing_screen.dart
│   │   │   │   ├── cart_screen.dart
│   │   │   │   └── checkout_screen.dart
│   │   │   ├── widgets/
│   │   │   │   ├── product_card.dart
│   │   │   │   └── cart_item.dart
│   │   │   └── services/
│   │   │       ├── auth_service.dart
│   │   │       └── product_service.dart
│   │   ├── pubspec.yaml
│   │   └── README.md
│   ├── react_app/
│   │   ├── public/
│   │   │   ├── index.html
│   │   │   └── favicon.ico
│   │   ├── src/
│   │   │   ├── components/
│   │   │   │   ├── Auth/
│   │   │   │   │   ├── Login.js
│   │   │   │   │   └── Signup.js
│   │   │   │   ├── Home.js
│   │   │   │   ├── ProductListing.js
│   │   │   │   ├── Cart.js
│   │   │   │   └── Checkout.js
│   │   │   ├── App.js
│   │   │   ├── index.js
│   │   │   └── services/
│   │   │       ├── authService.js
│   │   │       └── productService.js
│   │   ├── package.json
│   │   └── README.md
│   ├── firebase/
│   │   ├── firebase_config.js
│   │   ├── firebase_service.js
│   │   └── README.md
│   └── api/
│       ├── product_api.js
│       ├── auth_api.js
│       └── README.md
└── README.md
```

## Description
This project structure provides a comprehensive boilerplate for the Tribal Foods e-commerce application, consisting of a Flutter mobile app and a React web application, with the following features:

### Flutter Mobile App
- **Screens:** Login, Home, Product Listing, Cart, Checkout
- **Services:** Authentication service and Product service
- **Widgets:** Product card and Cart item

### React Web App
- **Components:** Authentication (Login, Signup), Home, Product Listing, Cart, Checkout
- **Services:** Authentication service

### Firebase Configuration
- **Firebase Setup:** Contains configuration and services for Firebase

### API Architecture
- **APIs:** Endpoints for product management and authentication

Each section contains a README with more details on usage and structure.