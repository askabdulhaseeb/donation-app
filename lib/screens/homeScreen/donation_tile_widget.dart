import 'package:donation_app/models/donation_cases.dart';
import 'package:flutter/material.dart';

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
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // icon
          Container(
            height: 60,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  donationCases.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.042,
                  ),
                ),
                // const SizedBox(height: 2),
                Text(
                  donationCases.location,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          // amount
          SizedBox(
            width: 80,
            child: Text(
              _amountConvertion(donationCases.totalAmount),
              maxLines: 1,
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
          )
        ],
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
