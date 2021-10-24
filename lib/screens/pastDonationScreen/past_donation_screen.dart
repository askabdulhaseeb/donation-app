import 'package:donation_app/screens/pastDonationScreen/donation_chart.dart';
import 'package:donation_app/screens/widgets/custom_appbar_background.dart';
import 'package:donation_app/screens/widgets/custom_appbar_with_title_and_pop_button.dart';
import 'package:donation_app/screens/widgets/custom_dark_background_circle.dart';
import 'package:flutter/material.dart';

class PastDonationScreen extends StatelessWidget {
  PastDonationScreen({Key? key}) : super(key: key);
  static const String routeName = '/PastDonationScreen';
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const SizedBox(height: double.infinity, width: double.infinity),
          _appBar(size),
          Positioned(
            top: size.height * 0.2,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('Total Donation: 15000'),
                  SizedBox(height: 8),
                  Expanded(child: DonationChart()),
                  SizedBox(height: 20),
                  Expanded(child: DonationChart()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack _appBar(Size size) {
    return Stack(
      children: <Widget>[
        const CustomAppBarBackbround(backgroundColor: Colors.green),
        Positioned(
          top: size.width * 0.09,
          left: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CustomAppBarWithTitleAndPopPageButton(
                title: 'Past Donations',
                backgroundColor: Colors.green,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  const SizedBox(width: 30),
                  Text(
                    '22',
                    style: TextStyle(
                      fontSize: size.width * 0.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text(
                      'cases',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: size.width * 0.05,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: -size.height * 0.04,
          top: -size.height * 0.1,
          child: CustomDarkBackgroundCircle(
            child: Icon(
              Icons.confirmation_num,
              size: size.width * 0.26,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
