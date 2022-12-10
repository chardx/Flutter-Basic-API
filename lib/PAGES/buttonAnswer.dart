import 'package:flutter/material.dart';

class ButtonAnswer extends StatelessWidget {
  const ButtonAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      padding: const EdgeInsets.all(15),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Data Awesome'),
      ),
    );
  }
}
