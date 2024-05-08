class Experience {
  final String startDate;
  final String? endDate;
  final String companyName;
  final String role;
  final bool? currentWork;

  Experience(
      {required this.companyName,
      this.endDate,
      required this.role,
      required this.startDate,
      this.currentWork});
}
