import 'package:flutter/material.dart';

class CustomAppBarBackbround extends StatelessWidget {
  const CustomAppBarBackbround({
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _CustomShape(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.30,
        color: backgroundColor,
      ),
    );
  }
}

class _CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double height = size.height;
    final double width = size.width;
    final Path path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  // ignore: always_specify_types
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
