import 'package:flutter/material.dart';

class CustomAppBarBackbround extends StatelessWidget {
  const CustomAppBarBackbround({Key? key, required this.backgroundColor})
      : super(key: key);
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _CustomShape(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.34,
        color: Colors.purpleAccent,
      ),
    );
  }
}

class _CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
