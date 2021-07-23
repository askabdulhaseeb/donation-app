import 'package:donation_app/screens/widgets/custom_circular_profile_image.dart';
import 'package:flutter/material.dart';

class HomeScreenHeaderText extends StatelessWidget {
  const HomeScreenHeaderText({
    Key? key,
  }) : super(key: key);

  final String name = 'Ibrahim';
  final String image =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqOZwTzOSl7RWkKstbqrKZ0BQcqBAxxAZ5yQ&usqp\=CAU';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: size.width * 0.07,
      fontWeight: FontWeight.bold,
    );
    return Positioned(
      left: 20,
      right: 36,
      top: size.height * 0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _getWelcomeText(),
                style: textStyle,
              ),
              Text(
                name,
                style: textStyle,
              ),
            ],
          ),
          CustomCircularProfileImage(
            imageURL: image,
            radius: size.width * 0.06,
          ),
        ],
      ),
    );
  }

  String _getWelcomeText() {
    final int _hour = DateTime.now().hour;
    if (_hour <= 10) {
      return 'Good Morning';
    } else if (_hour <= 12) {
      return 'Good Noon';
    } else if (_hour <= 17) {
      return 'Good Afternoon';
    } else if (_hour <= 21) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }
}
