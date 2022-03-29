// Quiz App using GETX with PageController and Timer
// import 'package:flutter/widgets.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
// import 'package:weather/screens/quiz_screen/quiz_screen.dart';
// import 'package:weather/screens/welcome_screen.dart';
// import 'package:weather/util/bindings.dart';
import 'package:get/get.dart';
// import 'package:weather/util/bindings.dart';

import 'screens/quiz_screen/quiz_screen.dart';
import 'screens/result_screen/result_screen.dart';
import 'screens/welcome_screen.dart';
import 'util/bindings.dart';
// import 'screens/result_screen/result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BilndingsApp(),
      title: 'Flutter Quiz App',
      // theme: ThemeData(primarySwatch: Colors.blue),
      home: WelcomeScreen(),
      initialRoute: "/",

      getPages: [
        GetPage(
          name: WelcomeScreen.routeName,
          page: () => WelcomeScreen(),
          // binding: BilndingsApp()
        ),
        GetPage(
          name: QuizScreen.routeName,
          page: () => QuizScreen(),
        ),
        GetPage(name: ResultScreen.routeName, page: () => ResultScreen()),
      ],
    );
  }
}
