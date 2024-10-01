import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/pages/login_page.dart';
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
      //home: LoginPage(),  
      home: HomePage(), 
    );
  }
}
