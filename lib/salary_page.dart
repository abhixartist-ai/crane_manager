import 'package:flutter/material.dart';

class SalaryPage extends StatelessWidget {
  const SalaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Salary')),
      body: const Center(child: Text('Salary Module')),
    );
  }
}