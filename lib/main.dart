import 'package:calcult/screens/firstScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstCalculator());
}

class FirstCalculator extends StatelessWidget {
  const FirstCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
    );
  }
}
