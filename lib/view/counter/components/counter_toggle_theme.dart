import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/viewmodel/counter_viewmodel.dart';

class CounterToggleSection extends ViewModelWidget<CounterViewModel> {
  const CounterToggleSection({super.key});

  @override
  Widget build(BuildContext context, viewModel) {
    return Center(
      child: Switch.adaptive(
        value: viewModel.themeService.isDarkMode,
        onChanged: (value) {
          viewModel.toggleTheme(value);
        },
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
      ),
    );
  }
}

const activeColor = Color(0xfffe6622);
const inactiveThumbColor = Color(0xFF3793ff);
const activeTrackColor = unSelectedIconColor;
const inactiveTrackColor = Color(0xffbec1cc);
const unSelectedIconColor = Color(0xff414958);
