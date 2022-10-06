import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My tools'),
        ),
      ),
      drawer: const Drawer(
        child: Text(
          'Favorites',
          style: TextStyle(color: Colors.deepPurple),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Card(
              elevation: 4,
              color: Colors.deepPurple,
              child: TextButton(
                child: const Text(
                  'Calculate BMI',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/bmi');
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              elevation: 4,
              color: Colors.deepPurple,
              child: TextButton(
                child: const Text(
                  'Fuel Expense',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/fuelExpense');
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              elevation: 4,
              color: Colors.deepPurple,
              child: TextButton(
                child: const Text(
                  'List App',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/listpage');
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              elevation: 4,
              color: Colors.deepPurple,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/animalspage');
                },
                child: const Text(
                  'Animals App',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              elevation: 4,
              color: Colors.deepPurple,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/counter');
                },
                child: const Text(
                  'Counter App',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
