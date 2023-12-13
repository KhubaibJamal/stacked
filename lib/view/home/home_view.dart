import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/viewmodel/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (model) => model.getPost(),
      builder: (context, homeViewModel, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          appBar: AppBar(
            centerTitle: true,
            title: Text(homeViewModel.counterService.counterValue.toString()),
          ),
          body: ListView.builder(
            itemCount: homeViewModel.post.length,
            itemBuilder: (context, index) {
              final post = homeViewModel.post[index];
              return ListTile(
                title: Text(post.title.toString()),
                subtitle: Text(post.body.toString()),
                leading: CircleAvatar(
                  child: Text(post.id.toString()),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
