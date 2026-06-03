weather-viewer-app/
├── App.tsx                       # Entry point
├── app.json                      # Expo config
├── package.json
├── tsconfig.json                 # TypeScript config
├── .env.example                  # API key template
├── assets/
│   ├── icons/                    # App icons
│   └── fonts/                    # Custom fonts (if any)
└── src/
    ├── components/
    │   ├── SearchBar.tsx          # City search input
    │   ├── WeatherCard.tsx        # Main weather display card
    │   ├── HumidityBadge.tsx      # Humidity indicator
    │   ├── ConditionIcon.tsx      # Weather condition icon
    │   ├── LoadingSpinner.tsx     # Loading state UI
    │   └── ErrorMessage.tsx       # Error state UI
    ├── screens/
    │   └── HomeScreen.tsx         # Main screen
    ├── hooks/
    │   └── useWeather.ts          # Weather data fetch hook
    ├── services/
    │   └── weatherApi.ts          # WeatherAPI.com API calls
    ├── utils/
    │   ├── formatWeather.ts       # Data formatting helpers
    │   └── formatDate.ts          # Date formatting helpers
    └── constants/
        ├── config.ts              # API config (base URL, key)
        └── colors.ts              # App color palette