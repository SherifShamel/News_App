import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/custom_background_widget.dart';
import 'package:news_app/models/category_model.dart';

class CategoryView extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryView({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Center(
        child: Text(categoryModel.title,style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
