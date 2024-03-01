import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.width * 0.8,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: mediaQuery.width * 0.8,
            height: 160,
            color: theme.primaryColor,
            child: Text(
              "News App",
              style: theme.textTheme.titleLarge,
            ),
          ),
          InkWell(
            onTap: (){
              // Navigator.pushReplacementNamed(context, PagesRouteName.homeView);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 25,
                bottom: 10,
              ),
              child: Row(
                children: [
                  const Icon(Icons.list_outlined, color: Colors.black),
                  const SizedBox(width: 8.0),
                  Text(
                    "Categories",
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.black
                    ),
                  ),
                ],
              ),

            ),
          ),
          InkWell(
            onTap: (){
              // Navigator.pushReplacementNamed(context, PagesRouteName.initial);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 10,
                bottom: 10,
              ),
              child: Row(
                children: [
                  const Icon(Icons.settings, color: Colors.black),
                  const SizedBox(width: 8.0),
                  Text(
                    "Settings",
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.black
                    ),
                  ),
                ],
              ),

            ),
          ),

        ],
      ),
    );
  }
}