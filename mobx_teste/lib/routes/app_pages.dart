import 'package:flutter/material.dart';
import 'package:mobx_teste/features/product/presentation/pages/product_page.dart';
import '../features/add_product/presentation/pages/add_product_page.dart';
import 'app_routes.dart';

abstract class AppPages {
  static Map<String, WidgetBuilder> pages = {
    Routes.inital: (context) {
      return ProductPage();
    },
    Routes.addProduct: (context) {
      String text = ModalRoute.of(context)!.settings.arguments as String;
      return AddProductPage(
        text: text,
      );
    },
  };
}
