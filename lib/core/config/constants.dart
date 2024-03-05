import 'package:flutter/material.dart';
import 'package:news_app/main.dart';

class Constants {
  static var mediaQuery =
      MediaQuery.of(navigatorKey.currentState!.context).size;
  static var theme = Theme.of(navigatorKey.currentState!.context);

  static const apiKey = "7ff6b71e91e74e479fc28badb194a390";
  static const baseUrl = "newsapi.org";
}
