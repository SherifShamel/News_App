import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CustomItemWidget extends StatelessWidget {
  final int index;
  final CategoryModel categoryModel;

  const CustomItemWidget(
      {super.key, required this.index, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: categoryModel.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(25),
          topRight: const Radius.circular(25),
          bottomLeft: index % 2 == 1
              ? const Radius.circular(0)
              : const Radius.circular(25),
          bottomRight: index % 2 == 0
              ? const Radius.circular(0)
              : const Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            categoryModel.imagePath,
            fit: BoxFit.cover,
          ),
          Text(
            categoryModel.title,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
