import 'package:flutter/material.dart';

import '../Route/BookRouteInformationParser.dart';
import '../Route/BookRouterDelegate.dart';

class RouterDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RouterDemoState();
}

class _RouterDemoState extends State<RouterDemo> {
  BookRouterDelegate _routerDelegate = BookRouterDelegate();
  BookRouteInformationParser _routeInformationParser =
      BookRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Books App',
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}
