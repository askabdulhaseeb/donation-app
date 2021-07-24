import 'package:flutter/material.dart';

class CustomSlidableAction extends StatelessWidget {
  const CustomSlidableAction({
    required this.size,
    required this.icon,
    required this.onTap,
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.amber,
    Key? key,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final VoidCallback onTap;
  final Color iconColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.width * 0.15,
        padding: const EdgeInsets.all(12),
        color: backgroundColor,
        child: FittedBox(
          child: Icon(icon, color: iconColor),
        ),
      ),
    );
  }
}
