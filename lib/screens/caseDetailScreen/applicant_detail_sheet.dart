import 'package:donation_app/models/donation_cases.dart';
import 'package:flutter/material.dart';

class ApplicantDetailSheetWidget extends StatelessWidget {
  const ApplicantDetailSheetWidget({
    required this.size,
    required this.donationCases,
    Key? key,
  }) : super(key: key);

  final Size size;
  final DonationCases donationCases;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _applicantPersonalData(
                size: size,
                hint: 'Name of Applicant',
                title: donationCases.applicantName,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _applicantPersonalData(
                    size: size,
                    hint: 'Type of Need',
                    title: donationCases.type,
                  ),
                  _applicantPersonalData(
                    size: size,
                    hint: 'Due Date',
                    title: donationCases.dueData,
                  ),
                ],
              ),
              _applicantPersonalData(
                size: size,
                hint: 'Total Amount Needed',
                title: donationCases.totalAmount.toString(),
              ),
              _collectedAmountProgressLine(context, size),
              _remainingAmout(size),
            ],
          ),
        ),
      ),
    );
  }

  Container _remainingAmout(Size size) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 4),
          Text(
            '${donationCases.totalAmount - donationCases.collectedAmount}',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.06,
            ),
          ),
          const Text(
            'Remaining',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  Stack _collectedAmountProgressLine(BuildContext context, Size size) {
    return Stack(
      children: <Widget>[
        Container(
          height: 14,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: 14,
          width: size.width *
              (donationCases.collectedAmount / donationCases.totalAmount),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }

  Column _applicantPersonalData({
    required Size size,
    required String hint,
    required String title,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          hint,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey[500],
            fontSize: size.width * 0.04,
          ),
        ),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: size.width * 0.05,
          ),
        ),
        const SizedBox(height: 6),
      ],
    );
  }
}
