"# 🍯 Tribal Foods - E-Commerce Mobile App

![Tribal Foods Logo](https://customer-assets.emergentagent.com/job_earth-pantry/artifacts/iqmemiel_Tribal%20Food%20Logo_PNG%20WW.png)

**\"We Serve Desi\"** - A premium e-commerce mobile application for authentic tribal and natural food products.

[![Made with Expo](https://img.shields.io/badge/Made%20with-Expo-000020.svg?style=flat&logo=expo)](https://expo.dev/)
[![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=flat&logo=fastapi&logoColor=white)](https://fastapi.tiangolo.com/)
[![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=flat&logo=mongodb&logoColor=white)](https://www.mongodb.com/)

---

## 📱 Live Demo

- **Web Preview:** [https://earth-pantry.preview.emergentagent.com](https://earth-pantry.preview.emergentagent.com)
- **Mobile:** Scan QR code with Expo Go app

---

## ✨ Features

### 🛍️ Core Shopping Features
- **Product Browsing** - Browse products by 5 categories
- **Product Search** - Search for natural products
- **Product Details** - View detailed product info with images, benefits, ingredients
- **Smart Cart** - Add/remove items with quantity management
- **Checkout Flow** - Complete address form with COD payment
- **Order Tracking** - View order history with status updates
- **Guest Checkout** - Shop without login

### 🎨 Design Features
- **Tribal Theme** - Authentic earthy color palette (Dark Green, Brown, Beige, Orange)
- **Responsive UI** - Touch-friendly design with 48px minimum targets
- **Smooth Navigation** - Bottom tab navigation (Home, Categories, Cart, Profile)
- **Loading States** - Beautiful loading indicators for better UX
- **Base64 Images** - Optimized image handling

### 🔧 Technical Features
- **MongoDB Integration** - Persistent data storage
- **RESTful APIs** - 12 endpoints for complete e-commerce functionality
- **Error Handling** - Comprehensive error handling
- **Environment Variables** - Secure configuration management
- **CORS Support** - Cross-origin resource sharing

---

## 🏗️ Tech Stack

### Frontend
- **Framework:** Expo (React Native)
- **Language:** TypeScript
- **Navigation:** Expo Router (File-based routing)
- **State Management:** React Hooks
- **HTTP Client:** Axios
- **Storage:** AsyncStorage
- **Icons:** @expo/vector-icons

### Backend
- **Framework:** FastAPI (Python)
- **Database:** MongoDB
- **ODM:** Motor (Async MongoDB driver)
- **Validation:** Pydantic
- **CORS:** Starlette Middleware

### DevOps
- **Process Manager:** Supervisor
- **Package Manager:** Yarn (Frontend), pip (Backend)

---

## 📂 Project Structure

```
tribal-foods-app/
├── frontend/                  # Expo React Native App
│   ├── app/                  # File-based routing
│   │   ├── (tabs)/          # Tab navigation screens
│   │   │   ├── index.tsx    # Home screen
│   │   │   ├── categories.tsx
│   │   │   ├── cart.tsx
│   │   │   └── profile.tsx
│   │   ├── products/
│   │   │   ├── [category].tsx      # Product listing
│   │   │   └── detail/[id].tsx     # Product detail
│   │   ├── checkout.tsx
│   │   ├── orders.tsx
│   │   └── order-success.tsx
│   ├── components/          # Reusable components
│   │   └── Logo.tsx
│   ├── assets/             # Images and fonts
│   ├── app.json            # Expo configuration
│   ├── package.json        # Dependencies
│   └── .env               # Environment variables
│
├── backend/                # FastAPI Server
│   ├── server.py          # Main API server
│   ├── requirements.txt   # Python dependencies
│   └── .env              # Environment variables
│
└── README.md             # This file
```

---

## 🚀 Getting Started

### Prerequisites

- **Node.js** (v18 or higher)
- **Python** (3.9 or higher)
- **MongoDB** (v5.0 or higher)
- **Yarn** (package manager)
- **Expo CLI** (for mobile development)

### Installation

#### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/tribal-foods-app.git
cd tribal-foods-app
```

#### 2. Setup Backend

```bash
cd backend

# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Create .env file
cat > .env << EOF
MONGO_URL=mongodb://localhost:27017
DB_NAME=tribal_foods
EOF

# Start MongoDB
mongod --dbpath /path/to/your/data

# Run the server
uvicorn server:app --host 0.0.0.0 --port 8001 --reload
```

#### 3. Setup Frontend

```bash
cd frontend

# Install dependencies
yarn install

# Create .env file
cat > .env << EOF
EXPO_PUBLIC_BACKEND_URL=http://localhost:8001
EXPO_USE_FAST_RESOLVER=1
EOF

# Start Expo
yarn start
```

#### 4. Access the App

- **Web:** Open [http://localhost:3000](http://localhost:3000)
- **Mobile:** Scan QR code with Expo Go app
- **Backend API:** [http://localhost:8001/api](http://localhost:8001/api)

---

## 🔌 API Endpoints

### Categories
- `GET /api/categories` - Get all categories
- `POST /api/categories/seed` - Seed sample categories

### Products
- `GET /api/products` - Get all products
- `GET /api/products?category={name}` - Filter by category
- `GET /api/products/{id}` - Get product details
- `POST /api/products/seed` - Seed sample products

### Cart
- `GET /api/cart/{userId}` - Get user cart
- `POST /api/cart` - Update cart
- `DELETE /api/cart/{userId}` - Clear cart

### Orders
- `POST /api/orders` - Create order
- `GET /api/orders/{userId}` - Get user orders
- `GET /api/orders/detail/{orderId}` - Get order details

---

## 🛠️ Configuration

### Frontend Environment Variables

Create `frontend/.env`:

```env
EXPO_PUBLIC_BACKEND_URL=https://your-backend-url.com
EXPO_TUNNEL_SUBDOMAIN=your-app-name
EXPO_PACKAGER_HOSTNAME=https://your-app-name.preview.emergentagent.com
EXPO_USE_FAST_RESOLVER=1
```

### Backend Environment Variables

Create `backend/.env`:

```env
MONGO_URL=mongodb://localhost:27017
DB_NAME=tribal_foods
```

---

## 📱 Building for Production

### Android APK

```bash
cd frontend

# Install EAS CLI
npm install -g eas-cli

# Login to Expo
eas login

# Configure build
eas build:configure

# Build APK
eas build --platform android --profile preview
```

### iOS IPA

```bash
# Build for iOS
eas build --platform ios --profile preview
```

---

## 🎨 Product Categories

1. **🍯 Honey** - Pure forest honey
2. **🌿 Herbal Products** - Natural herbal remedies
3. **🥜 Dry Fruits** - Premium dry fruits
4. **🍲 Traditional Foods** - Authentic tribal foods
5. **💪 Health Boosters** - Natural health supplements

---

## 📦 Sample Products

- **Wild Forest Honey** - ₹599 (10% off)
- **Safed Musli Powder** - ₹899 (15% off)
- **Premium Cashews** - ₹799 (5% off)
- **Dhawad Gond** - ₹449
- **Tulsi Powder** - ₹299 (20% off)
- **Mixed Dry Fruits Pack** - ₹1299 (10% off)

---

## 🧪 Testing

### Backend Testing

```bash
# Test API endpoints
curl http://localhost:8001/api/categories
curl http://localhost:8001/api/products
```

### Frontend Testing

```bash
# Start in test mode
yarn start --clear

# Run on iOS simulator
yarn ios

# Run on Android emulator
yarn android
```

---

## 🚀 Deployment

### Backend Deployment (Railway/Render)

1. Create account on Railway.app or Render.com
2. Connect GitHub repository
3. Set environment variables
4. Deploy!

### Frontend Deployment

1. **Web:** Deploy to Vercel/Netlify
2. **Mobile:** Submit to Play Store/App Store

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👥 Authors

- **Your Name** - *Initial work* - [YourGitHub](https://github.com/yourusername)

---

## 🙏 Acknowledgments

- Built with ❤️ using Expo and FastAPI
- Logo design inspired by tribal patterns
- Natural product images from tribal regions
- Community feedback and support

---

## 📞 Support

For support, email support@tribalfoods.com or join our Discord community.

---

## 🗺️ Roadmap

### Upcoming Features

- [ ] Razorpay payment integration
- [ ] Mobile OTP authentication
- [ ] Push notifications
- [ ] Wishlist feature
- [ ] Product reviews and ratings
- [ ] Admin panel
- [ ] Loyalty points system
- [ ] Multi-language support
- [ ] Dark mode

### Future Enhancements

- [ ] AI-powered product recommendations
- [ ] Voice search
- [ ] AR product preview
- [ ] Social media sharing
- [ ] Referral program

---

## 📊 Project Stats

- **Frontend:** 12 screens, 2879+ lines of code
- **Backend:** 12 API endpoints, complete CRUD operations
- **Database:** 4 collections (categories, products, carts, orders)
- **Performance:** Fast loading, optimized images

---

## 🐛 Known Issues

- AsyncStorage warnings in web preview (mobile-only feature)
- Shadow style deprecation warnings (cosmetic only)

---

## 📸 Screenshots

### Home Screen
Beautiful tribal-themed home screen with categories and featured products.

### Product Details
Detailed product information with benefits, ingredients, and usage guide.

### Cart & Checkout
Smart cart management with quantity controls and easy checkout flow.

### Order Success
Order confirmation with tracking details.

---

## 🌟 Show Your Support

Give a ⭐️ if this project helped you!

---

**Made with ❤️ by Tribal Foods Team**

*Pure From Nature - We Serve Desi* 🌿
"
