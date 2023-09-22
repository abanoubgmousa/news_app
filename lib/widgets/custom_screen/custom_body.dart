import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_category/all_categories.dart';
import 'package:news_app/widgets/custom_news/all_news/all_news_bulider.dart';

/// custom body uses for shows horizontal news (CATEGORIES) in AllCategories()
/// and shows vertical news items
class CustomBody extends StatefulWidget {
  const CustomBody({super.key});

  @override
  State<CustomBody> createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            //news categories horizontaly
            child: AllCategories(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 30),
          ),
          // news item verticaly
          AllNewsBulider(
            category: "general",
          ),
        ],
      ),
    );
  }
}
