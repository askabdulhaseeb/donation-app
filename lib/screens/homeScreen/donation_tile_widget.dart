import 'package:donation_app/models/donation_cases.dart';
import 'package:donation_app/screens/caseDetailScreen/case_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class DonationTileWidget extends StatelessWidget {
  const DonationTileWidget({
    required this.donationCases,
    required this.size,
    Key? key,
  }) : super(key: key);
  final DonationCases donationCases;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<dynamic>(
            builder: (BuildContext context) =>
                CaseDetailScreen(donationCases: donationCases),
          ),
        );
      },
      child: Container(
        height: size.width * 0.15,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: <Widget>[
            // icon
            Container(
              height: double.infinity,
              width: size.width * 0.16,
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.domain_verification_rounded,
                  color: Colors.white,
                  size: size.width * 0.1,
                ),
              ),
            ),
            // Detail
            Container(
              width: size.width * 0.50,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    donationCases.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                  // const SizedBox(height: 2),
                  Text(
                    donationCases.location,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: size.width * 0.026,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            // amount
            Text(
              _amountConvertion(donationCases.totalAmount),
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: size.width * 0.026,
              ),
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }

  String _amountConvertion(double amount) {
    String _converted = 'Rs: ';
    double temp = amount;
    if (amount > 999 && amount < 1000000) {
      temp = amount / 1000;
      _converted += '${temp.toStringAsFixed(1)} K';
    } else if (amount >= 1000000 && amount < 100000000) {
      temp = amount / 1000000;
      _converted += '${temp.toStringAsFixed(1)} M';
    }
    return _converted;
  }
}
