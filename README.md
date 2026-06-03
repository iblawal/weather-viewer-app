# GROUP 6 — Weather Viewer App ☁️

A React Native Expo mobile app that displays real-time weather information using WeatherAPI.com.

## Features
- Search weather by city name
- Display temperature, condition, and humidity
- Loading and error states
- No authentication required (public API key)

## Tech Stack
- React Native + Expo ~51
- WeatherAPI.com (free tier)

## Project Structure
```
weather-viewer-app/
├── App.js                        # Entry point
├── app.json                      # Expo config
├── package.json
├── .env.example                  # API key template
├── assets/
│   ├── icons/                    # App icons
│   └── fonts/                    # Custom fonts (if any)
└── src/
    ├── components/
    │   ├── SearchBar.jsx          # City search input
    │   ├── WeatherCard.jsx        # Main weather display card
    │   ├── HumidityBadge.jsx      # Humidity indicator
    │   ├── ConditionIcon.jsx      # Weather condition icon
    │   ├── LoadingSpinner.jsx     # Loading state UI
    │   └── ErrorMessage.jsx       # Error state UI
    ├── screens/
    │   └── HomeScreen.jsx         # Main screen
    ├── hooks/
    │   └── useWeather.js          # Weather data fetch hook
    ├── services/
    │   └── weatherApi.js          # WeatherAPI.com API calls
    ├── utils/
    │   ├── formatWeather.js       # Data formatting helpers
    │   └── formatDate.js          # Date formatting helpers
    └── constants/
        ├── config.js              # API config (base URL, key)
        └── colors.js              # App color palette
```

## Setup

### 1. Clone the repo
```bash
git clone https://github.com/iblawal/weather-viewer-app.git
cd weather-viewer-app
```

### 2. Install dependencies
```bash
npm install
```

### 3. Add your API key
```bash
cp .env.example .env
# Edit .env and paste your WeatherAPI.com key
```
Get a free key at: https://www.weatherapi.com/my/

### 4. Run the app
```bash
npx expo start
```
Scan the QR code with the **Expo Go** app on your phone.

## Team — Group 6
| Name | GitHub | Role |
|------|--------|------|
| (Member 1) | @username | |
| (Member 2) | @username | |
| (Member 3) | @username | |
| (Member 4) | @username | |
