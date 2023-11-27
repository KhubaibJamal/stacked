import 'package:stacked_flutter/data/api_services.dart';
import 'package:stacked_flutter/model/post_model.dart';
import 'package:stacked_flutter/utils/app_url.dart';

class PostRepository {
  final apiService = ApiService();

  Future<List<PostModel>> getPost() async {
    List<PostModel> post = [];
    List<dynamic> postResponse = await apiService.get(AppUrl.postEndPoint);
    for (var i in postResponse) {
      post.add(PostModel.fromJson(i));
    }
    return post;
  }
}
