// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_services.dart';
// import 'package:news_app/widgets/custom_news/custom_widget_news/item_news.dart';

// // this class for show all news in screen
// class AllNews extends StatefulWidget {
//   const AllNews({super.key});

//   @override
//   State<AllNews> createState() => _AllNewsState();
// }

// class _AllNewsState extends State<AllNews> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   // initState() implements in start screen and don't wait getNews() ends
//   // so we must put setState((){}) in getNews() to make re build screen

//   @override
//   void initState() {
//     getNews();
//     super.initState();
//   }

//   Future<void> getNews() async {
//     // the articles take data from getGeneralNews()
//     articles = await NewsServices().getGeneralNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     // sliver list for shows ItemNews() verticaly it's more usefull than
//     // ListView.builder
//     return isLoading
//         ? const SliverFillRemaining(
//             child: Center(
//               child: CircularProgressIndicator(),
//             ),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 return ItemNews(
//                   articleModel: articles[index],
//                 );
//               },
//               childCount: articles.length,
//             ),
//           );
//   }
// }
