import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_flutter/services/counter_service.dart';
import 'package:stacked_flutter/view/counter/counter_view.dart';
import 'package:stacked_flutter/view/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    // counter view
    MaterialRoute(
      page: CounterView,
      initial: true,
    ),

    // home view
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: CounterService),
  ],
)
class App {}
