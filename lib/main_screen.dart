import 'package:flutter/material.dart';
import 'package:adhd_writing_app/interface.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SizedBox(
          width: double.infinity,
          child: Center(
            child: Interface(),
          ),
        ),
      ),
    );
  }
}
