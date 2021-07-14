import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  const CustomCircle({Key? key}) : super(key: key);
  final String imageURL =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqOZwTzOSl7RWkKstbqrKZ0BQcqBAxxAZ5yQ&usqp\=CAU';
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
