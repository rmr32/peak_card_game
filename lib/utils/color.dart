import 'package:flutter/material.dart';

/// A palette of colors to be used in the game.
class Palette {
  // Constants
  static const Color primary = Colors.black;
  static const Color onPrimary = Colors.white; // Dark Text
  static const Color primaryContainer =
      // Color.fromARGB(255, 87, 240, 240); // Back
      Color.fromARGB(199, 75, 9, 161); // Bacground
  static const Color onPrimaryContainer =
      // Color.fromARGB(255, 77, 77, 77); // Light
      Color.fromARGB(255, 202, 202, 202); // Background

  //   static const Color primary = Colors.black;
  // static const Color onPrimary = Colors.white; // Dark Text
  // static const Color primaryContainer =
  //     Color.fromARGB(255, 87, 240, 240); // Background
  // static const Color onPrimaryContainer =
  //     Color.fromARGB(255, 77, 77, 77); // Light Background

  // Main Text Color
  // Color get ink => pingInk;

  // Game Backgrounds
  // Color get backgroundMain => pingBackgroundMain;
  // Color get backgroundLevelSelection => pingBackgroundMain;
  // Color get backgroundPlaySession => pingBackgroundMain;
  // Color get backgroundSettings => pingBackgroundMain;
  static const Color playerOne = Colors.red;
  static const Color playerTwo = Colors.blue;
  static Color gameBoard = Colors.green.shade800;
  static const Color playingCard = Colors.white;
  static const Color redCard = Colors.red;
  static const Color blackCard = Colors.black;
}
