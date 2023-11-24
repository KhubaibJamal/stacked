import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/app/app.locator.dart';
import 'package:stacked_flutter/app/app.router.dart';
import 'package:stacked_flutter/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  void addValue() {
    counterService.incrementCounterValue();
    rebuildUi();
  }

  void navigateToHome() {
    navigationService.navigateTo(Routes.homeView);
  }
}
