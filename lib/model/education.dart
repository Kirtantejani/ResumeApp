class Education {
  final String startDate;
  final String? endDate;
  final String collegeName;
  final String cgpa;
  final bool isCgpa;
  final bool? currentWork;

  Education(
      {required this.collegeName,
      this.endDate,
      required this.cgpa,
      required this.isCgpa,
      required this.startDate,
      this.currentWork});
}
