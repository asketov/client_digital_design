
import 'package:client_digital_design/ui/app_navigator.dart';
import 'package:client_digital_design/ui/roots/loader.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: AppNavigator.key,
      onGenerateRoute: (settings) =>
          AppNavigator.OnGeneratedRoutes(settings, context),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoaderWidget.create(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}