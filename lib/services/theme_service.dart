import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeService {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.light;
    }
  }

  void toggleTheme(bool isOn) {
    // themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    themeMode = isOn ? ThemeMode.light : ThemeMode.dark;
  }
}
