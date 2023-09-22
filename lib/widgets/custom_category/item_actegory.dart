import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/categories_screen.dart';

/// Item category contains one item to shows it in screen but data comes by
/// Category Model to change data of all items and assigne it in images and
/// texts.
/// we assigne CategoryModel in a constructor as a required to force use
/// CategoryModel to assigne a value.

class ItemCategory extends StatelessWidget {
  const ItemCategory({Key? key, required this.category}) : super(key: key);

  // category model for declare data of image and text
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CaregoriesScreen(
              category: category.categoryName,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        height: MediaQuery.sizeOf(context).height * .13,
        width: MediaQuery.sizeOf(context).width * .5,
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                // category.image , category.text to assign data from CategoryModel
                // to shows it in category item
                image: AssetImage(category.image),
                fit: BoxFit.cover)),
        child: Text(
          category.categoryName,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
