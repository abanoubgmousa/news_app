import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/custom_news/custom_widget_news/item_news.dart';

// this class for show all news in screen
class AllNews extends StatelessWidget {
  final List<ArticleModel> articles;
  const AllNews({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    // sliver list for shows ItemNews() verticaly it's more usefull than
    // ListView.builder, the last const category not scrolling
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ItemNews(
            articleModel: articles[index],
          );
        },
        childCount: articles.length,
      ),
    );
  }
}
