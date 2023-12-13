import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/app/app.locator.dart';
import 'package:stacked_flutter/app/app.router.dart';
import 'package:stacked_flutter/theme.dart';
import 'package:stacked_flutter/viewmodel/main_viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => MainViewModel(),
      onViewModelReady: (model) {
        print("MAIN");
      },
      builder: (context, viewModel, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Stacked State Management',
          themeMode: viewModel.themeService.themeMode,
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
        );
      },
    );
  }
}
