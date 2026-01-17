import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(const CraneApp());
}

class CraneApp extends StatelessWidget {
  const CraneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crane Manager',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const Dashboard(),
    );
  }
}