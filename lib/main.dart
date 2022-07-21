import 'package:flutter/material.dart';

import 'package:danilo_arquiteto/pages/home-page.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Danilo Arquiteto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.pageName,
      routes: routes,
    );
  }
}
