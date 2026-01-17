import 'package:flutter/material.dart';

class DailyWorkPage extends StatelessWidget {
  const DailyWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Work')),
      body: const Center(child: Text('Daily Work Entry')),
    );
  }
}