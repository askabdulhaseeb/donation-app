import 'package:donation_app/screens/widgets/custom_appbar_background.dart';
import 'package:donation_app/screens/widgets/custom_circle.dart';
import 'package:donation_app/screens/widgets/custom_search_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'custom_card_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  static const String routeName = '/HomeScreen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _search = TextEditingController();
  String name = "Ibrahim";
  String image =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqOZwTzOSl7RWkKstbqrKZ0BQcqBAxxAZ5yQ&usqp\=CAU';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
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
          // Search Donation
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSearchTextFormField(search: _search),
                    Container(
                      height: size.width * 0.12,
                      width: size.width * 0.12,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        LineIcons.filter,
                        color: Colors.purple,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'DONATE NOW',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
