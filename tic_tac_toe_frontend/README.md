# Tic Tac Toe Frontend (Flutter)

A simple Tic Tac Toe game with two modes:
- Player vs Computer (basic AI: win, block, center, corners, edges)
- Player vs Player (local pass-and-play)

Design theme: Ocean Professional (modern, clean, rounded corners, subtle shadows).

## Run

- Mobile: `flutter run` (Android/iOS)
- Web (if enabled): `flutter run -d chrome`

No environment variables needed. The app is self-contained.

## Structure

- lib/main.dart — App bootstrap with Provider and theme
- lib/theme/app_theme.dart — Ocean Professional theme
- lib/models/game_model.dart — Game state, rules, and AI
- lib/screens/home_screen.dart — Mode selection screen
- lib/screens/game_screen.dart — Game UI (grid, scores, controls)

## Notes

- Uses ChangeNotifier for simple state management.
- Smooth transitions between screens and subtle gradients consistent with style guide.
- Highlights winning line cells.
