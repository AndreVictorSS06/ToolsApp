import 'package:bmi_app/pages/animals_page.dart';
import 'package:bmi_app/pages/counter_page.dart';
import 'package:bmi_app/pages/list_page.dart';
import 'package:flutter/material.dart';
import 'pages/fuel_expense.dart';
import 'pages/bmi_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // home: const BMIPage(title: 'BMI App'),
      initialRoute: '/home',
      routes: {
        '/bmi': (context) => const BMIPage(title: 'BMI App'),
        '/home': (context) => const HomePage(),
        '/fuelExpense': ((context) => const fuelExpense()),
        '/listpage': ((context) => const ListPage()),
        '/animalspage': (context) => const animalsPage(),
        '/counter': (context) => const CounterPage()
      },
    );
  }
}
