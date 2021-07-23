import 'package:donation_app/models/donation_cases.dart';
import 'package:flutter/material.dart';

class DonationCasesProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<DonationCases> _case = <DonationCases>[];

  void addDomeData() {
    final List<DonationCases> _needy = <DonationCases>[
      DonationCases(
        cid: '1',
        uid: '11',
        applicantName: 'ABC Name',
        title: 'Funs Needs for son educations - urgent need for fee',
        discription: 'Need Dunation for my Son school fee as Soon as Possible.',
        type: 'education',
        location: 'Faislabad',
        totalAmount: 100000,
        collectedAmount: 75000,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '12',
        uid: '22',
        applicantName: 'CDE Name',
        title: 'Security Guard daughters School Fee',
        discription:
            'Need fee for the Security Guard daughters as Soon as Possible.',
        type: 'education',
        location: 'Gujranwala',
        totalAmount: 60000,
        collectedAmount: 20500,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '13',
        uid: '33',
        applicantName: 'FGH Name',
        title: 'Construction of Musjid',
        discription: 'Need funds for Construction of Musjid in Lahore.',
        type: 'religious',
        location: 'Lahore',
        totalAmount: 1200000,
        collectedAmount: 100000,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '14',
        uid: '44',
        applicantName: 'HIJ Name',
        title: 'Food Distribution in poor people',
        discription: 'Need Amount for Food Distribution in poor people.',
        type: 'charity',
        location: 'Lahore',
        totalAmount: 10000,
        collectedAmount: 1200,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '15',
        uid: '55',
        applicantName: 'ABC Name',
        title: 'Funs Needs for son educations - urgent need for fee',
        discription: 'Need Dunation for my Son school fee as Soon as Possible.',
        type: 'education',
        location: 'Faislabad',
        totalAmount: 100000,
        collectedAmount: 75000,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '16',
        uid: '66',
        applicantName: 'CDE Name',
        title: 'Security Guard daughters School Fee',
        discription:
            'Need fee for the Security Guard daughters as Soon as Possible.',
        type: 'education',
        location: 'Gujranwala',
        totalAmount: 60000,
        collectedAmount: 20500,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '17',
        uid: '77',
        applicantName: 'FGH Name',
        title: 'Construction of Musjid',
        discription: 'Need funds for Construction of Musjid in Lahore.',
        type: 'religious',
        location: 'Lahore',
        totalAmount: 1200000,
        collectedAmount: 100000,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '19',
        uid: '99',
        applicantName: 'HIJ Name',
        title: 'Food Distribution in poor people',
        discription: 'Need Amount for Food Distribution in poor people.',
        type: 'charity',
        location: 'Lahore',
        totalAmount: 10000,
        collectedAmount: 1200,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '20',
        uid: '22',
        applicantName: 'ABC Name',
        title: 'Funs Needs for son educations - urgent need for fee',
        discription: 'Need Dunation for my Son school fee as Soon as Possible.',
        type: 'education',
        location: 'Faislabad',
        totalAmount: 100000,
        collectedAmount: 75000,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '21',
        uid: '22',
        applicantName: 'CDE Name',
        title: 'Security Guard daughters School Fee',
        discription:
            'Need fee for the Security Guard daughters as Soon as Possible.',
        type: 'education',
        location: 'Gujranwala',
        totalAmount: 60000,
        collectedAmount: 20500,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '23',
        uid: '33',
        applicantName: 'FGH Name',
        title: 'Construction of Musjid',
        discription: 'Need funds for Construction of Musjid in Lahore.',
        type: 'religious',
        location: 'Lahore',
        totalAmount: 1200000,
        collectedAmount: 100000,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
      DonationCases(
        cid: '24',
        uid: '44',
        applicantName: 'HIJ Name',
        title: 'Food Distribution in poor people',
        discription: 'Need Amount for Food Distribution in poor people.',
        type: 'charity',
        location: 'Lahore',
        totalAmount: 10000,
        collectedAmount: 1200,
        issueData: 'Jun 13, 2021',
        dueData: 'Aug 13, 2021',
      ),
    ];
    addListOfCases(_needy);
  }

  void addCase(DonationCases donationCases) {
    _case.add(donationCases);
    notifyListeners();
  }

  void addListOfCases(List<DonationCases> list) {
    _case.addAll(list);
    notifyListeners();
  }

  List<DonationCases> getCasesList() {
    return _case;
  }
}
