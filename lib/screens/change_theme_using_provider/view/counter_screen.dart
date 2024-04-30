import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:advflutterch1/screens/change_theme_using_provider/provider/counter_provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3C5B6F),
        title: const Text(
          'Counter App',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          Provider.of<CounterProvider>(context, listen: true).count.toString(),
          style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff3C5B6F),
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).increment();
        },
        child: const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
