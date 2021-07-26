import 'package:flutter/material.dart';

class CustomDarkBackgroundCircle extends StatelessWidget {
  const CustomDarkBackgroundCircle({
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: size.height * 0.34,
        width: size.width * 0.44,
        padding: EdgeInsets.only(
          bottom: size.width * 0.1,
          left: size.width * 0.06,
        ),
        alignment: Alignment.bottomLeft,
        decoration: const BoxDecoration(
          color: Colors.black12,
          shape: BoxShape.circle,
        ),
        child: Opacity(opacity: 0.5, child: child),
      ),
    );
  }
}
