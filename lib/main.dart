import 'package:flutter/material.dart';
import 'package:flutter_teste/page/carteirinha.dart';
import 'package:flutter_teste/page/home.page.dart';
import 'page/login.page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teste Plasa 1',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home:HomePage(),
    );
  }
}

