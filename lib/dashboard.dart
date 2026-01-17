import 'package:flutter/material.dart';
import 'employee_page.dart';
import 'vehicle_page.dart';
import 'site_page.dart';
import 'daily_work_page.dart';
import 'salary_page.dart';
import 'expense_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crane Business Dashboard')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(12),
        children: [
          _tile(context, 'Employees', Icons.people, const EmployeePage()),
          _tile(context, 'Vehicles', Icons.fire_truck, const VehiclePage()),
          _tile(context, 'Sites', Icons.location_city, const SitePage()),
          _tile(context, 'Daily Work', Icons.assignment, const DailyWorkPage()),
          _tile(context, 'Salary', Icons.currency_rupee, const SalaryPage()),
          _tile(context, 'Expenses', Icons.receipt_long, const ExpensePage()),
        ],
      ),
    );
  }

  Widget _tile(BuildContext c, String t, IconData i, Widget p) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () => Navigator.push(c, MaterialPageRoute(builder: (_) => p)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(i, size: 40), const SizedBox(height: 10), Text(t)],
        ),
      ),
    );
  }
}