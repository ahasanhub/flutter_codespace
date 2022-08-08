import 'package:flutter/material.dart';
import 'package:flutter_widget_communication/count.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Communication'),
      ),
      body: Center(
        child: Count(
          count: count,
          onCountChanged: (int val) {
            setState(() {
              count += val;
            });
          },
        ),
      ),
    );
  }
}
