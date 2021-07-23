import 'package:donation_app/screens/widgets/custom_dark_background_circle.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    required this.icon,
    required this.title,
    required this.numberOfCases,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final int numberOfCases;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: size.width * 0.04,
      color: Colors.white,
      letterSpacing: 1,
    );
    return Container(
      height: (size.width > 500) ? size.width / 3.6 : size.width / 2.6,
      width: (size.width > 500) ? size.width / 2.6 : size.width / 2.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -size.height * 0.2,
            left: -size.height * 0.1,
            child: const CustomDarkBackgroundCircle(),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(icon, color: Colors.white, size: size.width * 0.06),
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: textStyle,
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '$numberOfCases',
                  style: TextStyle(
                    fontSize: size.width * 0.1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' Cases',
                  style: textStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
