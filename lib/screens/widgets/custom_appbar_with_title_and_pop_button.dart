import 'package:flutter/material.dart';

class CustomAppBarWithTitleAndPopPageButton extends StatelessWidget {
  const CustomAppBarWithTitleAndPopPageButton({
    required this.title,
    this.backgroundColor = Colors.purpleAccent,
    Key? key,
  }) : super(key: key);

  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: backgroundColor,
              child: const Padding(
                padding: EdgeInsets.only(right: 2),
                child: Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white, size: 16),
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: size.width * 0.70,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
