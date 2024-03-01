import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/custom_background_widget.dart';
import 'package:news_app/generated/assets.dart';
import 'package:news_app/pages/home/widgets/custom_drawer.dart';
import 'package:news_app/pages/home/widgets/custom_item_widget.dart';

import '../../../models/category_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<CategoryModel> categoryList = [
    CategoryModel(
      id: "sports",
      title: "Sports",
      imagePath: Assets.imgSportsIcon,
      backgroundColor: const Color(0xFFC91C22),
    ),
    CategoryModel(
      id: "Politics",
      title: "Politics",
      imagePath: Assets.imgPoliticsIcon,
      backgroundColor: const Color(0xFF003E90),
    ),
    CategoryModel(
      id: "health",
      title: "Health",
      imagePath: Assets.imgHealthIcon,
      backgroundColor: const Color(0xFFED1E79),
    ),
    CategoryModel(
      id: "business",
      title: "Business",
      imagePath: Assets.imgBussinesIcon,
      backgroundColor: const Color(0xFFCF7E48),
    ),
    CategoryModel(
      id: "environment",
      title: "Environment",
      imagePath: Assets.imgEnvironmentIcon,
      backgroundColor: const Color(0xFF4882CF),
    ),
    CategoryModel(
      id: "science",
      title: "Science",
      imagePath: Assets.imgScience,
      backgroundColor: const Color(0xFFF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return CustomBackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "News App",
            style: theme.textTheme.titleLarge,
          ),
          leadingWidth: 80,
        ),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                textAlign: TextAlign.start,
                "Pick Your Category !",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: const Color(0xFF4F5A69),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 4 / 5),
                  itemBuilder: (context, index) => CustomItemWidget(
                    index: index,
                    categoryModel: categoryList[index],
                  ),
                  itemCount: 6,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
