# Clothes Shop - Authentication & Onboarding Module

A clean, modular, and responsive Flutter UI implementation for the **Onboarding and Authentication** flow of the **Clothes Shop** mobile application. Built with a focus on reusable components, centralized theming, and clean navigation.

---

## Implemented Screens

### 1. Onboarding Screen (`OnboardingScreen`)
* **Purpose:** Acts as the entry point for unauthenticated users.
* **UI Structure:** Features a centered brand logo using `Expanded` and `Center` to occupy the primary viewport, while pinning the primary action buttons (`Create new account` and `Login`) cleanly to the bottom inside a `SafeArea`.

### 2. Login Screen (`LoginScreen`)
* **Purpose:** Allows existing users to authenticate into their accounts.
* **Key Elements:** Email/Password input fields, Forgot Password navigation trigger, primary login CTA (`CustomAppButton`), and a bottom navigation prompt (`AuthPrompt`) redirecting to the Sign-Up screen.

### 3. Sign Up Screen (`SignupScreen`)
* **Purpose:** Enables new users to register a new account.
* **Key Elements:** User registration form fields, primary registration button, and a reusable `AuthPrompt` at the footer to switch back to the Login screen.

### 4. Forgot Password / Reset Screen
* **Purpose:** Provides a seamless recovery flow for users who need to reset their credentials.
* **Key Elements:** Recovery input field, confirmation action button, and clear user guidance.

---

## Reusable Core Components

To maintain Clean Code principles and avoid UI duplication across screens, the following custom widgets were extracted into the `core/` directory:

| Widget Name | Location | Description |
| :--- | :--- | :--- |
| **`Logo`** | `core/widgets/logo.dart` | Renders the brand identity asset with dynamic color tinting (`AppColor.primaryColor`). |
| **`CustomAppButton`** | `core/app_button/custom_app_button.dart` | A standardized, customizable button supporting primary and secondary color schemes (`color1`, `color2`) and tap callbacks. |
| **`AuthPrompt`** | `core/widgets/auth_prompt.dart` | A flexible inline text-action footer (`Row`) used across auth screens to toggle between Login and Sign Up via decoupled `VoidCallback` actions. |

---

## Architecture & Design Highlights

* **Centralized Styling:** All colors (`AppColor.primaryColor`, `AppColor.gray1`, `AppColor.gray2`) are managed from a single source of truth (`core/app_color/app_color.dart`).
* **Decoupled Navigation:** Routing is handled cleanly via named routes (`AppRoutes`) and callback functions (`VoidCallback`), keeping UI widgets independent of navigation logic.
* **Responsive Safe Areas:** Uses `SafeArea` and consistent symmetric padding to ensure proper rendering across modern devices with notches and bottom gesture bars.

---

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/your-username/clothes_shop.git](https://github.com/your-username/clothes_shop.git)

```


2. **Install dependencies:**
   ```bash
flutter pub get

```


3. **Run the application:**
```bash
flutter run

```

