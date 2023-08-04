import 'package:counter_app_using_provider/providers/counterProvider.dart';
import 'package:counter_app_using_provider/providers/sliderProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';

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
    
    return MultiProvider(providers:[
      ChangeNotifierProvider<CounterProvider>(create: (_)=>CounterProvider()),
      ChangeNotifierProvider<SliderProvider>(create: (_)=>SliderProvider()),


  ],
      child:  const MaterialApp(
        title: 'MultiProviders',
        home: HomePage(),
      ),
    );
    
    
    
    /*return ChangeNotifierProvider(
      create: (context)=>CounterProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter using Provider ',
        home: HomePage(),
      ),
    );*/
  }
}


