# Food Swipe

Current build iOS app from an old React app with SwiftUI
Swipe for food, built with love.


## 🧱 Tech Stack

### Frontend (mobile-first)
- iOS: Swift + SwiftUI
- Android: Kotlin (later)
- Web: React / Next.js with TypeScript to improve the old version of the web

### Backend
- Firebase:
  - Auth (email, Google, Apple sign-in)
  - Firestore (user profiles, swipe history, favorites)
  - Storage (user-uploaded images, maybe reviews)
  - Cloud Functions (custom logic, analytics, notifications)

### External APIs
- Google Places API (restaurant data, photos, ratings)
- Optionally: Yelp API for reviews

---

## 📱 Pages (Screens)

### 1. **Onboarding/Login Page**
- Sign up / Log in (Email, Google, Apple)
- Option to set food/diet preferences

### 2. **Home Page / Swipe Feed**
- Tinder-style restaurant swiping
- Cards with restaurant info: name, photo, stars, distance, price
- Action buttons:  Like /  Skip / View details

### 3. **Details Page**
- Deep info about restaurant (map, hours, reviews)
- Save to favorites
- Option to open in Google Maps

### 4. **Favorites Page**
- List of liked restaurants
- Option to revisit, share, or remove

### 5. **Profile / Settings Page**
- Edit food preferences
- Update location
- Log out

---

## Reusable Components (Mobile & Web)

- `<SwipeCard />` – Card showing restaurant info
- `<RestaurantDetails />` – Expanded info display
- `<SwipeButtons />` – Like / Skip / View Details
- `<Header />` – App title, user avatar, settings
- `<LocationSelector />` – Change user location (manually or GPS)
- `<LoginForm />` – Auth form (email, Google/Apple)
- `<FilterModal />` – Choose filters (price range, open now, category)

---

# Upcoming Ideas
- Swipe-based recommendation tuning (ML later)
- Group mode: match with friends and pick a place together
- Push notifications: "It's lunchtime — here's a new pick!"
- Analytics dashboard for user swipes + trends

---

## First Steps

- [X] Initialize `ios-app/` SwiftUI project in Xcode
- [X] Set up Firebase project
- [ ] Integrate Firebase Auth
- [ ] Build Login/Sign-up flow
- [ ] Build basic Swipe UI with static data
- [ ] Fetch real data from Google Places API
- [ ] Save swipes to Firestore


# Structure
<pre> ```
/ios-app/
├── Assets/               ← Images, icons, color sets (in Assets.xcassets)
├── Views/                ← Screens and subviews (components)
│   ├── WelcomeView.swift
│   ├── LoginView.swift
│   └── RegisterView.swift
├── Components/           ← Reusable UI pieces (buttons, cards, etc)
│   └── PrimaryButton.swift
├── ViewModels/           ← State management, Firebase logic, etc.
│   └── AuthViewModel.swift
├── Models/               ← Data models
│   └── User.swift
├── Services/             ← API calls, Firebase handlers, Location, etc.
│   └── AuthService.swift
├── Extensions/           ← Swift or View extensions (e.g. for colors, modifiers)
│   └── Color+App.swift
├── Resources/            ← Plist files, configs, etc.
│   └── GoogleService-Info.plist
└── ContentView.swift     ← Entry point
``` </pre>
