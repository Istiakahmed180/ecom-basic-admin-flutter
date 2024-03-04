import 'package:flutter/material.dart';

class LauncherPage extends StatelessWidget {
  static const String routeName = "/launcher";

  const LauncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
