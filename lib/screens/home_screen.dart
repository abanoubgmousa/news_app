import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_screen/custom_appbar.dart';
import 'package:news_app/widgets/custom_screen/custom_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // custom appbar contains text in center
      appBar: customAppbar(),
      // all news contains and all categories
      body: const CustomBody(),
    );
  }
}
