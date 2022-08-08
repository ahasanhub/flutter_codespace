import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int count;
  //final VoidCallback onCountPressed;
  final VoidCallback onCountChanged;
  const Count(
      {required this.count,
      //required this.onCountPressed,
      required this.onCountChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(onPressed: onCountChanged, icon: const Icon(Icons.add)),
        Text('$count'),
        IconButton(onPressed: onCountChanged, icon: const Icon(Icons.remove)),
      ],
    );
  }
}
