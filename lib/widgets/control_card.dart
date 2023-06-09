import 'package:flutter/material.dart';

class ControlCard extends StatelessWidget {
  final String name, code;
  final IconData icon_left;
  final IconData icon_right;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  const ControlCard({
    super.key,
    required this.name,
    required this.code,
    required this.icon_left,
    required this.icon_right,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon_left,
              color: isInverted ? _blackColor : Colors.white,
              size: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted
                            ? _blackColor
                            : Colors.white.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              icon_right,
              color: isInverted ? _blackColor : Colors.white,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
