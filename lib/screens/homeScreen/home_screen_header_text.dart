import 'package:donation_app/screens/widgets/custom_circular_profile_image.dart';
import 'package:flutter/material.dart';

class HomeScreenHeaderText extends StatelessWidget {
  const HomeScreenHeaderText({
    Key? key,
  }) : super(key: key);

  final String name = "Ibrahim";
  final String image =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqOZwTzOSl7RWkKstbqrKZ0BQcqBAxxAZ5yQ&usqp\=CAU';

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      top: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                _getWelcomeText(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomCircularProfileImage(imageURL: image),
            ],
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  String _getWelcomeText() {
    final int _hour = DateTime.now().hour;
    if (_hour <= 10) {
      return 'Good Morning';
    } else if (_hour <= 14) {
      return 'Good Noon';
    } else if (_hour <= 18) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
}
