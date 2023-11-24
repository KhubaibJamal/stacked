import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/viewmodel/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, counterViewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(counterViewModel.counterService.counterValue.toString()),
                ElevatedButton(
                  onPressed: () {
                    counterViewModel.addValue();
                  },
                  child: const Text("add"),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterViewModel.navigateToHome();
                  },
                  child: const Text("Navigate to Home Page"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
