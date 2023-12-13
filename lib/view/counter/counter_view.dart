import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/view/counter/components/counter_text_section.dart';
import 'package:stacked_flutter/view/counter/components/counter_toggle_theme.dart';
import 'package:stacked_flutter/viewmodel/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, counterViewModel, child) {
        print("Counter Class");
        return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CounterTextSection(),
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
                const SizedBox(height: 10),
                const CounterToggleSection(),
              ],
            ),
          ),
        );
      },
    );
  }
}
