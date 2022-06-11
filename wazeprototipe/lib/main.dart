import 'package:flutter/material.dart';
import 'package:wazeprototipe/login.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: Login.id,
      routes: {
        Login.id: (_) => Login(),
      },
    );
  }
}
