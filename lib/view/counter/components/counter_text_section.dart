import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/viewmodel/counter_viewmodel.dart';

class CounterTextSection extends ViewModelWidget<CounterViewModel> {
  @override
  Widget build(BuildContext context, CounterViewModel viewModel) {
    return Text(viewModel.counterService.counterValue.toString());
  }
}
