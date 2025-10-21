import 'package:flutter/material.dart';
import 'package:alarm_clock_project/components/local_alarm_clock_listview.dart';

class AlarmClockPage extends StatelessWidget {
  const AlarmClockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 210, 210, 210),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: LocalAlarmClockListview()),
            ],
          ),
        )
    );
  }
}
