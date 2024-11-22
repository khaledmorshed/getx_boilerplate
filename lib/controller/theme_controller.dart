import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_constants.dart';

class ThemeController extends GetxController implements GetxService {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromPrefs(); // Load theme from SharedPreferences on initialization
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    _saveThemeToPrefs(isOn); // Save the new theme mode in SharedPreferences
    update();
  }

  // Save the theme mode to SharedPreferences
  Future<void> _saveThemeToPrefs(bool isDarkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.themeKey, isDarkMode);
  }

  // Load the theme mode from SharedPreferences
  Future<void> _loadThemeFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDarkMode = prefs.getBool(AppConstants.themeKey);
    if (isDarkMode != null) {
      themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    } else {
      themeMode = ThemeMode.light; // Default to light mode if not set
    }
    update();
  }
}
