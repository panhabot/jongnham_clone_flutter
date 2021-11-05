import 'package:flutter/material.dart';
import './screens/HomePage.dart';
import './screens/MenuPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: HomePage(),
        initialRoute: '/',
        routes: {'/menu': (context) => MenuPage()});
  }
}
