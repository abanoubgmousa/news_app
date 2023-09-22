import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

/// ItemNews class shows one item of news it's contains:-
/// 1- image network to show image
/// 2- large text it's a headline of news
/// 3- small text it's a starts news text

class ItemNews extends StatelessWidget {
  const ItemNews({
    Key? key,
    required this.articleModel,
  }) : super(key: key);

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              // image news
              child: articleModel.image != null
                  ? Image.network(articleModel.image!,
                      height: MediaQuery.sizeOf(context).height * .2,
                      width: MediaQuery.sizeOf(context).width,
                      fit: BoxFit.cover)
                  : Image.asset("assets/placeholder-image.png")),
          const SizedBox(height: 12),
          // headline text
          Text(
            articleModel.title ?? "",
            style: const TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          // content of news
          Text(
            articleModel.subTitle ?? "",
            style: const TextStyle(color: Colors.grey, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
