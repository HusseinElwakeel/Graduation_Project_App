import 'package:flutter/material.dart';
import 'package:graduation/layout/HomeLayout.dart';

void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "times new roman",

        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(230 ,26, 26, 1),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
        ),
      ),

      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


