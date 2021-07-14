import 'package:flutter/material.dart';

class CustomDarkBackgroundCircle extends StatelessWidget {
  const CustomDarkBackgroundCircle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: size.height * 0.34,
        width: size.width * 0.44,
        decoration: new BoxDecoration(
          color: Colors.black12,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
