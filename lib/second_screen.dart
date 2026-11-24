import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/counter_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.decrement();
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