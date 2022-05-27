import 'package:flutter/material.dart';
import 'myListView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),

        primarySwatch: Colors.blue,
      ),
      home: const MyListView(),
    );
  }
}