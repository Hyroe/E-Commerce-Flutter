import 'package:e_commerce/routes.dart';
import 'package:e_commerce/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop.CO',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, 
      initialRoute: '/login',  
      routes: routes,
    );
  }
}
