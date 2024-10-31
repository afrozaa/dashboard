import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key}); // Constructor with key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ONLINE SOFT SELL', style: TextStyle(fontSize: 18, color: Colors.white)),
            Text('Hello, Admin', style: TextStyle(fontSize: 14, color: Colors.white70)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.translate, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            DashboardCard(icon: 'images/img.png', label: 'CUSTOMERS'),
            DashboardCard(icon: 'images/img_1.png', label: 'SUPPLIERS'),
            DashboardCard(icon: 'images/img_2.png', label: 'PRODUCTS'),
            DashboardCard(icon: 'images/img_3.png', label: 'POS'),
            DashboardCard(icon: 'images/img_4.png', label: 'EXPENSE'),
            DashboardCard(icon: 'images/img_5.png', label: 'ORDERS'),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String icon;
  final String label;

  DashboardCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 100,
              width: 80,
            ),

            Container(
              height: 8,
            ),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
