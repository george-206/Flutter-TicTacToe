# Tic Tac Toe 

A two-player Tic Tac Toe mobile game built with **Flutter** and **Dart**. Players take turns marking the board with X and O, competing to complete a row, column, or diagonal.

## Features

* **Two-player gameplay** — alternate turns between Player 1 and Player 2.
* **Winner detection** — automatically detects when a player completes a winning combination.
* **Winning cell highlights** — visually highlights the three cells that form the winning combination.
* **Draw detection** — recognizes when the board is full and neither player has won.
* **Result screens** — displays the appropriate screen for a winner or a draw.
* **Interactive UI** — a colorful gradient background and a simple 3×3 game board.

## Built With

* [Flutter](https://flutter.dev/) — UI framework
* [Dart](https://dart.dev/) — programming language

## 🚀 Getting Started

### Prerequisites

* [Flutter SDK](https://docs.flutter.dev/get-started/install)
* [Dart SDK](https://dart.dev/get-dart) (included with Flutter)
* An emulator or a physical device

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/YOUR-USERNAME/flutter-tic-tac-toe.git
   ```

2. Navigate to the project directory:

   ```bash
   cd flutter-tic-tac-toe
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```

## How to Play

1. Player 1 starts with X.
2. Player 2 takes the next turn with O.
3. Players take turns selecting an empty cell.
4. The first player to align three marks horizontally, vertically, or diagonally wins.
5. If all nine cells are filled without a winner, the game ends in a draw.

## What I Learned

* Managing UI state with `StatefulWidget` and `setState()`.
* Handling user interactions and turn-based game logic.
* Implementing win and draw detection.
* Creating reusable widgets in Flutter.
* Navigating between screens and handling delayed navigation.

## 📄 License

This project was created for learning and practice purposes.
