import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/counter_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.increment();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child:  Column(
          children: [
            Text('Welcome to the Home Screen!'),
            SizedBox(height: 20),
            Text('${counterProvider.countValue}'),
          ],
        ),
      ),
    );
  }
}