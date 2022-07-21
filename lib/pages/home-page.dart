import 'package:flutter/material.dart';

import 'package:danilo_arquiteto/components/app-bar/app-bar.dart';

class HomePage extends StatefulWidget {
  static String pageName = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("Largura: ${MediaQuery.of(context).size.width}");
    print("Altura: ${MediaQuery.of(context).size.height}");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBarComponent(),
      ),
    );
  }
}
