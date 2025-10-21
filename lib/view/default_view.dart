import 'package:flutter/material.dart';
import 'package:alarm_clock_project/components/button_bar.dart';
import 'friend_page.dart';
import 'alarm_clock_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alarm_clock_project/bloc/button_bar/button_bar_bloc.dart';
import 'package:alarm_clock_project/bloc/button_bar/button_bar_state.dart';

class DefaultClockPage extends StatelessWidget {
  const DefaultClockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ButtonBarBloc(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 33, 35, 37),
          leading: IconButton(onPressed: (){}, icon: const Icon(Icons.settings, color: Colors.white,)),
          centerTitle: true,
          title: const Text("Unsleep Me",style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.add, color: Colors.white, size: 30,)
            )
          ],
        ),
        body: BlocBuilder<ButtonBarBloc, ButtonBarState>(
          builder: (context, state) {
            return state.value == 0 ? const AlarmClockPage() : const FriendPage();
          },
        ),
        bottomNavigationBar: const HomeButtonBar(),
      ),
    );
  }
}
