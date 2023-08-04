import 'package:counter_app_using_provider/counterProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'package:counter_app_using_provider/counterModel.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CounterProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter using Provider ',
        home: HomePage(),
      ),
    );
  }
}


