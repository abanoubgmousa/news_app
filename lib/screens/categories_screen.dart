// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app/widgets/custom_news/all_news/all_news_bulider.dart';

class CaregoriesScreen extends StatelessWidget {
  const CaregoriesScreen({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AllNewsBulider(category: category),
        ],
      ),
    );
  }
}
