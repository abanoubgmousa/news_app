class ArticleModel {
  final String? image;
  final String? title;
  final String? subTitle;

  ArticleModel(
      {required this.image, required this.title, required this.subTitle});

  // factory ArticleModel.fromJson(Map<String, dynamic> json) {
  //   return ArticleModel(
  //       image: json["title"],
  //       title: json["urlToImage"],
  //       subTitle: json["description"]);
  // }
}
