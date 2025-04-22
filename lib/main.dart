import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_change_notifier/Pages/MyHomePage.dart';
import 'package:provider_change_notifier/Providers/Counter_Provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: ChangeNotifierProvider<CounterProvider>(
        create: (context) {
          return CounterProvider();
        },
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
