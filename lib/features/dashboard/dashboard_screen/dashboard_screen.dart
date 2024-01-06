import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const path = "/dashboard-screen/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("DASHBOARD")],
      ),
    );
  }
}
