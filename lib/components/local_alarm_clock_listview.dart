import 'package:flutter/material.dart';

class LocalAlarmClockListview extends StatelessWidget {
  const LocalAlarmClockListview({super.key});

  @override
  Widget build(BuildContext context) {
    final clockData = [];
    return ListView.builder(
        itemCount : clockData.length,
        itemBuilder: (context, index) {
          final task = clockData[index];
          String month = '';
          String day = '';
          if(task["Day"].toString().length>1) {
            month = task["Day"].substring(0, 2);
            day = task["Day"].substring(2, 4);
          }
          return Column(
            children: [
              ListTile(
                onTap: () {},
                leading: task["Day"].toString().length == 1 ?
                Text(task["Day"] , style: const TextStyle(fontSize: 30),):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(month , style: const TextStyle(fontSize: 25,height: 1),) ,
                    Text(day , style: const TextStyle(fontSize: 25, height: 1),)
                  ],
                ),
                horizontalTitleGap: 30.0,
                title: Text(task["Time"], style: const TextStyle(fontSize: 30)),
                subtitle: Text(task["subtitle"], style: const TextStyle(fontSize: 20)),
                trailing: Switch(
                  value: task["isON"],
                  activeColor: Colors.green,
                  onChanged: (bool value) {
                  },
                ),
              ),
              const Divider(height:10 ,thickness: 1.4,color: Colors.black,)
            ],
          );
        }
    );
  }
}
