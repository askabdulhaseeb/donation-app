import 'dart:convert';

class DonationCases {
  final String cid;
  final String uid;
  final String applicantName;
  final String title;
  final String discription;
  final String type;
  final String location;
  final double totalAmount;
  final double collectedAmount;
  final String issueData;
  final String dueData;

  DonationCases({
    required this.cid,
    required this.uid,
    required this.applicantName,
    required this.title,
    required this.discription,
    required this.type,
    required this.location,
    required this.totalAmount,
    required this.collectedAmount,
    required this.issueData,
    required this.dueData,
  });

  Map<String, dynamic> toMap() {
    return {
      'cid': cid,
      'uid': uid,
      'applicantName': applicantName,
      'title': title,
      'discription': discription,
      'type': type,
      'location': location,
      'totalAmount': totalAmount,
      'collectedAmount': collectedAmount,
      'issueData': issueData,
      'dueData': dueData,
    };
  }

  factory DonationCases.fromMap(Map<String, dynamic> map) {
    return DonationCases(
      cid: map['cid'],
      uid: map['uid'],
      applicantName: map['applicantName'],
      title: map['title'],
      discription: map['discription'],
      type: map['type'],
      location: map['location'],
      totalAmount: map['totalAmount'],
      collectedAmount: map['collectedAmount'],
      issueData: map['issueData'],
      dueData: map['dueData'],
    );
  }
  factory DonationCases.fromDocument(docs) {
    return DonationCases(
      cid: docs?.data()['cid'] ?? '',
      uid: docs?.data()['uid'] ?? '',
      applicantName: docs?.data()['applicantName'] ?? 'Not found',
      title: docs?.data()['title'] ?? 'Not found',
      discription: docs?.data()['discription'] ?? 'Not found',
      type: docs?.data()['type'] ?? '',
      location: docs?.data()['location'] ?? 'Not found',
      totalAmount: docs?.data()['totalAmount'] ?? 0.0,
      collectedAmount: docs?.data()['collectedAmount'] ?? 0.0,
      issueData: docs?.data()['issueData'] ?? 'Not found',
      dueData: docs?.data()['dueData'] ?? 'Not found',
    );
  }

  String toJson() => json.encode(toMap());

  factory DonationCases.fromJson(String source) =>
      DonationCases.fromMap(json.decode(source));
}
