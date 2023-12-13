import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/app/app.locator.dart';
import 'package:stacked_flutter/services/theme_service.dart';

class MainViewModel extends BaseViewModel {
  final themeService = locator<ThemeService>();

  ThemeMode themeMode = ThemeMode.dark;
  void getThemeMode() {
    themeMode = themeService.themeMode;
    rebuildUi();
  }

  // void getThemeMode() {
  //   themeService.themeMode;
  //   rebuildUi();
  // }

  // late ThemeMode themeMode;
}
