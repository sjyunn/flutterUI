import 'package:flutter/material.dart';

class ButtonTes extends StatelessWidget {
  final bool isStarted;
  const ButtonTes({super.key, required this.isStarted});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isStarted ? Colors.amber : Colors.grey,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 44,
        ),
        child: Text(
          isStarted ? '테라피 정지' : '테라피 시작',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
