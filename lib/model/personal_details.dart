class PersonalDetails {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String line1;
  final String line2;
  final String line3;
  final String? github;
  final String? leetCode;
  final String? linked;

  PersonalDetails({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.line1,
    required this.line2,
    required this.line3,
    this.linked,
    this.leetCode,
    this.github,
  });
}
