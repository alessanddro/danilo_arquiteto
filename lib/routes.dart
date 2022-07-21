import 'package:flutter/material.dart';

import 'pages/home-page.dart';

Map<String, WidgetBuilder> routes = {
  //Aqui registra as rotas
  // SplashScreen.routeName: (context) => SplashScreen(),
  // SplashScreen.pageName: (context) => SplashScreen(),
  HomePage.pageName: (context) => HomePage(),
};
