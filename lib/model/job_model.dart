class JobModel {
  String title;
  String company;
  String companyLogo;
  String description;
  String jobType;
  String locationType;
  int applicants;
  DateTime postedAt;

  JobModel({
    required this.title,
    required this.company,
    required this.companyLogo,
    required this.description,
    required this.jobType,
    required this.locationType,
    required this.applicants,
    required this.postedAt,
  });
}