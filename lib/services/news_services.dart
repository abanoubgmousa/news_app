import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  // final Dio dio;
  // NewsServices(this.dio);
  final dio = Dio();

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      /// Receiveing data by url
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=7da2b73caafc4c59af0ac73862143375&category=$category");

      /// .data for make action in map but the result of respons or response.data
      ///is same to resive data must be save in map to make use easier
      Map<String, dynamic> jsonData = response.data;
      // we convert map to list use data more easier and articalList to save data
      // which converted
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articleList = [];
      // loop in artices list and add
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article["urlToImage"],
            title: article["title"],
            subTitle: article["description"]);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
