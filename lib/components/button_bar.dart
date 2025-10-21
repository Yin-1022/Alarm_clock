import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alarm_clock_project/bloc/button_bar/button_bar_bloc.dart';
import 'package:alarm_clock_project/bloc/button_bar/button_bar_event.dart';
import 'package:alarm_clock_project/bloc/button_bar/button_bar_state.dart';

class HomeButtonBar extends StatelessWidget {
  const HomeButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonBarBloc, ButtonBarState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          height: 80,
          decoration: BoxDecoration(
            color: const Color(0xFF212325),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.9),
                spreadRadius: 1,
                blurRadius: 8,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonBelow(
                buttonIcon: Icons.alarm_on,
                buttonID: 0,
                isSelected: state.value,
                onTap: () => context.read<ButtonBarBloc>().add(SetViewMode(0)),
              ),
              ButtonBelow(
                buttonIcon: Icons.group,
                buttonID: 1,
                isSelected: state.value,
                onTap: () => context.read<ButtonBarBloc>().add(SetViewMode(1)),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonBelow extends StatelessWidget {
  final VoidCallback onTap;
  final IconData buttonIcon;
  final int buttonID;
  final int isSelected;

  const ButtonBelow({
    required this.onTap,
    required this.buttonIcon,
    required this.buttonID,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: const Color(0xFF212325),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              size: 45,
              buttonIcon,
              color: isSelected == buttonID ? Colors.blue : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
