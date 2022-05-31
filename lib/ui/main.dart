import 'package:daiwa_mobile/ui/screens/home.dart';
import 'package:daiwa_mobile/ui/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Daiwa());
}

class Daiwa extends StatelessWidget {
  const Daiwa({Key? key}) : super(key: key);

  static const String title = 'Daiwa Sports';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Daiwa.title,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
