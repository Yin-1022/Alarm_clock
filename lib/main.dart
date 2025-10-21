import 'package:flutter/material.dart';
import 'view/default_view.dart';

void main() {
  runApp(const AlarmClockApp());
}
class AlarmClockApp extends StatelessWidget {
  const AlarmClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultClockPage(),
    );
  }
}
