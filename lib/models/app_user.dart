class AppUser {
  final String uid;
  final String name;
  final String phoneNumber;
  final String imageURL;
  final String address;

  AppUser({
    required this.uid,
    this.name = '',
    this.phoneNumber = '',
    this.imageURL = '',
    this.address = '',
  });
}
