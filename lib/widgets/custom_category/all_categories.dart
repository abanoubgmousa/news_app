import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/custom_category/item_actegory.dart';

/// AllCategories class contains list of CategoryModel to set data of categories,
/// ListView.builder to looping items but diffrent index to shows all categories.

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});
  // category model here for assign data by values to shows Sit in screen
  final List<CategoryModel> categories = const [
    // items of categories
    CategoryModel(image: "assets/business.jpg", categoryName: "business"),
    CategoryModel(image: "assets/economy.jpg", categoryName: "entertainment"),
    CategoryModel(image: "assets/general.jpg", categoryName: "general"),
    CategoryModel(image: "assets/politics.jpg", categoryName: "technology"),
    CategoryModel(image: "assets/sports.jpg", categoryName: "sports"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return SizedBox(
            // item category is a custom container of one item
            // category named parameter to shows CategoryModel (required)
            // categories[index] it's a list of (CategoryModel) sets of values
            child: ItemCategory(
              category: categories[index],
            ),
          );
        },
      ),
    );
  }
}
