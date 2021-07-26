import 'package:donation_app/models/donation_cases.dart';
import 'package:donation_app/screens/caseDetailScreen/applicant_detail_sheet.dart';
import 'package:donation_app/screens/widgets/custom_appbar_background.dart';
import 'package:donation_app/screens/widgets/custom_appbar_with_title_and_pop_button.dart';
import 'package:donation_app/screens/widgets/custom_dark_background_circle.dart';
import 'package:flutter/material.dart';

class CaseDetailScreen extends StatelessWidget {
  const CaseDetailScreen({required this.donationCases, Key? key})
      : super(key: key);
  static const String routeName = '/CaseDetailScreen';
  final DonationCases donationCases;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: size.height / 2,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: SizedBox(
                    height: size.height * 0.3,
                    width: double.infinity,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1603491656337-3b491147917c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGFob3JlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                _appBar(size),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'APPLICANT DETAILS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Refress'),
                      ),
                    ],
                  ),
                  //
                  ApplicantDetailSheetWidget(
                      size: size, donationCases: donationCases),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _recentDonatedAmountCard(amount: 'Rs. 100'),
                        _recentDonatedAmountCard(amount: 'Rs. 500'),
                        _recentDonatedAmountCard(amount: 'Enter Amount'),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: const Text(
                      'DONATE',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _recentDonatedAmountCard({required String amount}) {
    return Container(
      height: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 2,
        //     blurRadius: 3,
        //     offset: const Offset(0, 6), // changes position of shadow
        //   ),
        // ],
      ),
      child: Text(
        amount,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }

  Stack _appBar(Size size) {
    return Stack(
      children: <Widget>[
        const CustomAppBarBackbround(backgroundColor: Colors.purpleAccent),
        Positioned(
          right: -size.height * 0.04,
          top: -size.height * 0.1,
          child: CustomDarkBackgroundCircle(
            child: Icon(
              Icons.favorite_border,
              color: Colors.white38,
              size: size.width * 0.25,
            ),
          ),
        ),
        // Positioned(
        //   top: size.height * 0.022,
        //   right: size.height * 0.032,
        //   child: Icon(
        //     Icons.favorite_border,
        //     color: Colors.white38,
        //     size: size.width * 0.25,
        //   ),
        // ),
        Positioned(
          top: 20,
          left: 10,
          child: SizedBox(
            height: size.height * 0.21,
            child: _caseAppBarDetails(size),
          ),
        )
      ],
    );
  }

  Column _caseAppBarDetails(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CustomAppBarWithTitleAndPopPageButton(title: 'Case No.'),
        Padding(
          padding: const EdgeInsets.only(left: 34),
          child: SizedBox(
            width: size.width * 0.80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  donationCases.cid,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: size.width * 0.09,
                    color: Colors.white,
                  ),
                ),
                Text(
                  donationCases.discription,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.only(left: 34),
          child: Text(
            donationCases.location,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
