import 'package:flutter/material.dart';

class Notice extends StatelessWidget {
  final bool isConnected;

  const Notice({
    super.key,
    required this.isConnected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isConnected ? Colors.amber : Colors.grey,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: Text(
          isConnected ? 'Connected' : 'Disconnected',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 8,
          ),
        ),
      ),
    );
  }
}
