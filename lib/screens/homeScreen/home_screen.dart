import 'package:donation_app/screens/widgets/custom_appbar_background.dart';
import 'package:donation_app/screens/widgets/custom_circle.dart';
import 'package:flutter/material.dart';
import 'custom_card_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  static const String routeName = '/HomeScreen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "Ibrahim";
  String image =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqOZwTzOSl7RWkKstbqrKZ0BQcqBAxxAZ5yQ&usqp\=CAU';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height * .42,
        child: Stack(
          children: [
            CustomAppBarBackbround(backgroundColor: Colors.purpleAccent),
            Positioned(
              right: -34,
              top: -54,
              child: CustomCircle(),
            ),
            Positioned(
              left: 20,
              top: 40,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Good Morning\n" + name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CustomCardWidget(
                    icon: Icons.stacked_line_chart,
                    title: 'Donations',
                    numberOfCases: 120,
                    backgroundColor: Colors.green,
                  ),
                  CustomCardWidget(
                    icon: Icons.star,
                    title: 'Wish List',
                    numberOfCases: 13,
                    backgroundColor: Colors.amber,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
