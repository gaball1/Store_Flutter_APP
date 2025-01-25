import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:storeapp/Screens/Homepage.dart';
import 'package:storeapp/widgets/update-product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Homepage.id: (context) => Homepage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
      initialRoute: Homepage.id,
    );
  }
}
