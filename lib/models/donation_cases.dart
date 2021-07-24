import 'dart:convert';

class DonationCases {
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
    this.isFav = false,
  });
  factory DonationCases.fromMap(Map<String, dynamic> map) {
    return DonationCases(
      cid: map['cid'].toString(),
      uid: map['uid'].toString(),
      applicantName: map['applicantName'].toString(),
      title: map['title'].toString(),
      discription: map['discription'].toString(),
      type: map['type'].toString(),
      location: map['location'].toString(),
      totalAmount: double.parse(map['totalAmount'].toString()),
      collectedAmount: double.parse(map['collectedAmount'].toString()),
      issueData: map['issueData'].toString(),
      dueData: map['dueData'].toString(),
    );
  }
  // ignore: always_specify_types
  factory DonationCases.fromDocument(docs) {
    return DonationCases(
      cid: docs?.data()['cid'].toString() ?? '',
      uid: docs?.data()['uid'].toString() ?? '',
      applicantName: docs?.data()['applicantName'].toString() ?? 'Not found',
      title: docs?.data()['title'].toString() ?? 'Not found',
      discription: docs?.data()['discription'].toString() ?? 'Not found',
      type: docs?.data()['type'].toString() ?? '',
      location: docs?.data()['location'].toString() ?? 'Not found',
      totalAmount:
          double.parse(docs?.data()['totalAmount'].toString() ?? '0.0'),
      collectedAmount:
          double.parse(docs?.data()['collectedAmount'].toString() ?? '0.0'),
      issueData: docs?.data()['issueData'].toString() ?? 'Not found',
      dueData: docs?.data()['dueData'].toString() ?? 'Not found',
    );
  }
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
  bool isFav;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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

  String toJson() => json.encode(toMap());

  // factory DonationCases.fromJson(String source) =>
  //     DonationCases.fromMap(json.decode(source));
}
