// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/custom_news/all_news/all_news.dart';
import 'package:news_app/widgets/custom_news/custom_widget_news/circular_progress_indiccator.dart';
import 'package:news_app/widgets/custom_news/custom_widget_news/error_message.dart';

class AllNewsBulider extends StatefulWidget {
  const AllNewsBulider({
    Key? key,
    required this.category,
  }) : super(key: key);
  final String category;

  @override
  State<AllNewsBulider> createState() => _AllNewsBuliderState();
}

class _AllNewsBuliderState extends State<AllNewsBulider> {
  var futureData;
  @override
  void initState() {
    futureData = NewsServices().getTopHeadlines(category: widget.category);
    super.initState();
  }

  // if data not get shows CircularProgressIndicator() or show data form API or
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futureData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return AllNews(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: ErrorMessage(errorMessage: "Check your connection"),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(child: CustomCircularProgressIndicator()),
          );
        }
      },
    );
  }
}
