import 'package:donation_app/screens/widgets/custom_appbar_background.dart';
import 'package:donation_app/screens/widgets/custom_dark_background_circle.dart';
import 'package:donation_app/screens/widgets/custom_search_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'custom_card_widget.dart';
import 'home_screen_header_text.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  static const String routeName = '/HomeScreen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * .38,
            child: Stack(
              children: [
                CustomAppBarBackbround(backgroundColor: Colors.purpleAccent),
                Positioned(
                  right: -size.height * 0.04,
                  top: -size.height * 0.1,
                  child: CustomDarkBackgroundCircle(),
                ),
                HomeScreenHeaderText(),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CustomCardWidget(
                        icon: LineIcons.donate,
                        title: 'Donations',
                        numberOfCases: 120,
                        backgroundColor: Colors.green,
                      ),
                      CustomCardWidget(
                        icon: Icons.star_border_outlined,
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
                    Expanded(child: CustomSearchTextFormField(search: _search)),
                    const SizedBox(width: 10),
                    Container(
                      height: 48,
                      width: 50,
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
