import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget {
  final String text;
  const AddProductPage({ Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("$text"),
      ),
    );
  }
}