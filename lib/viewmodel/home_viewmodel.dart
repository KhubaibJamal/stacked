import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/app/app.locator.dart';
import 'package:stacked_flutter/repository/post_repository.dart';
import 'package:stacked_flutter/services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  final counterService = locator<CounterService>();

  // instance of post repository
  final postRepository = PostRepository();

  List<dynamic> post = [];
  getPost() async {
    post = await postRepository.getPost();
    rebuildUi();
  }
}
