import 'package:flutter/material.dart';
import 'package:greenhouse_user_page/dashboard_panel.dart';

void main() {
  runApp(const GreenhouseApp());
}

class GreenhouseApp extends StatelessWidget {
  /* DashboardPanel is the home page of the app. */
  const GreenhouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenhouse App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DashboardPanel(),
    );
  }
}