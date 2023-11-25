import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/viewmodel/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, homeViewModel, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(homeViewModel.counterService.counterValue.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
