# Maheshkumar KR – Flutter Developer Portfolio

A responsive dark-themed Flutter Web portfolio starter using Material 3.

## Run locally

1. Install Flutter and enable web support: `flutter config --enable-web`
2. From this folder run: `flutter pub get`
3. Run locally: `flutter run -d chrome`
4. Build for deployment: `flutter build web --release`

## Personalize before publishing

Open `lib/main.dart` and update the `PortfolioData` values:
- Exact experience duration
- Email and phone
- LinkedIn and GitHub URLs
- Resume PDF URL
- Summary and skills

Also update the company name, employment dates and project descriptions. Only publish project details and screenshots that your employer permits you to share. The HRMS entry is described as personal/team project work; adjust it to accurately reflect your contribution.

## Deploy

Build with `flutter build web --release`, then deploy the generated `build/web` directory to a static hosting service such as Firebase Hosting, Vercel or Netlify.
