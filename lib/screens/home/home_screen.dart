import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:job_seeking_ui/model/job_model.dart';
import 'package:job_seeking_ui/screens/home/widget/job_item_view.dart';
import 'package:job_seeking_ui/screens/search/search_screen.dart';
import 'package:job_seeking_ui/services/global_service.dart';
import 'package:job_seeking_ui/utils/assets_res.dart';
import 'package:job_seeking_ui/utils/color_res.dart';
import 'package:job_seeking_ui/utils/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<JobModel> topJobs = [
    JobModel(
      title: "UI/UX Designer",
      company: "TechAbbot Pvt Ltd",
      companyLogo: AssetsRes.company7,
      description:
          "We are currently seeking a talented and experienced UI/UX Designer to join our team.",
      jobType: "Full Time",
      locationType: "Ahmedabad",
      applicants: 12,
      postedAt: DateTime.now().subtract(const Duration(hours: 1)),
    ),
    JobModel(
      title: "AI Researcher",
      company: "IBM",
      companyLogo: AssetsRes.company9,
      description:
          "IBM is hiring an AI Researcher to work on innovative artificial intelligence technologies.",
      jobType: "Full Time",
      locationType: "New York",
      applicants: 98,
      postedAt: DateTime.now().subtract(const Duration(hours: 7)),
    ),
    JobModel(
      title: "Project Manager",
      company: "Capgemini",
      companyLogo: AssetsRes.company2,
      description:
          "Lead high-impact projects and collaborate with global teams at Capgemini.",
      jobType: "Full Time",
      locationType: "Hybrid",
      applicants: 75,
      postedAt: DateTime.now().subtract(const Duration(hours: 2)),
    ),
  ];
  List<JobModel> jobList = [
    JobModel(
      title: "UI/UX Designer",
      company: "TechAbbot Pvt Ltd",
      companyLogo: AssetsRes.company7,
      description:
          "We are currently seeking a talented and experienced UI/UX Designer to join our team.",
      jobType: "Full Time",
      locationType: "Ahmedabad",
      applicants: 12,
      postedAt: DateTime.now().subtract(const Duration(hours: 1)),
    ),
    JobModel(
      title: "UX Writer",
      company: "X.com",
      companyLogo: AssetsRes.company5,
      description:
          "Join our team as a UX Writer to create engaging content for our platforms.",
      jobType: "Part Time",
      locationType: "Remote",
      applicants: 12,
      postedAt: DateTime.now().subtract(const Duration(hours: 1)),
    ),
    JobModel(
      title: "Interaction Designer",
      company: "Facebook",
      companyLogo: AssetsRes.company6,
      description:
          "Seeking an Interaction Designer to craft seamless user experiences.",
      jobType: "Full Time",
      locationType: "Remote",
      applicants: 123,
      postedAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    JobModel(
      title: "Senior Accountant",
      company: "Google",
      companyLogo: AssetsRes.company10,
      description:
          "Experienced Accountant needed to manage and oversee company accounts.",
      jobType: "Part Time",
      locationType: "Remote",
      applicants: 22,
      postedAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    JobModel(
      title: "Software Engineer",
      company: "Apple",
      companyLogo: AssetsRes.company8,
      description:
          "Join Apple as a Software Engineer to build groundbreaking solutions.",
      jobType: "Full Time",
      locationType: "Cupertino",
      applicants: 89,
      postedAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),
    JobModel(
      title: "Data Scientist",
      company: "Amazon",
      companyLogo: AssetsRes.company1,
      description:
          "We are looking for an experienced Data Scientist to analyze data and improve business decisions.",
      jobType: "Full Time",
      locationType: "Remote",
      applicants: 150,
      postedAt: DateTime.now().subtract(const Duration(hours: 4)),
    ),
    JobModel(
      title: "Project Manager",
      company: "Capgemini",
      companyLogo: AssetsRes.company2,
      description:
          "Lead high-impact projects and collaborate with global teams at Capgemini.",
      jobType: "Full Time",
      locationType: "Hybrid",
      applicants: 75,
      postedAt: DateTime.now().subtract(const Duration(hours: 2)),
    ),
    JobModel(
      title: "Business Analyst",
      company: "TCS",
      companyLogo: AssetsRes.company3,
      description:
          "We need a skilled Business Analyst to identify business needs and create impactful solutions.",
      jobType: "Full Time",
      locationType: "Mumbai",
      applicants: 65,
      postedAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    JobModel(
      title: "Cloud Engineer",
      company: "Microsoft",
      companyLogo: AssetsRes.company4,
      description:
          "Join Microsoft to build and maintain scalable cloud-based solutions.",
      jobType: "Full Time",
      locationType: "Remote",
      applicants: 112,
      postedAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    JobModel(
      title: "AI Researcher",
      company: "IBM",
      companyLogo: AssetsRes.company9,
      description:
          "IBM is hiring an AI Researcher to work on innovative artificial intelligence technologies.",
      jobType: "Full Time",
      locationType: "New York",
      applicants: 98,
      postedAt: DateTime.now().subtract(const Duration(hours: 7)),
    ),
  ];

  PageController controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 240.h,
                  margin: EdgeInsets.only(bottom: 50.h),
                  decoration: BoxDecoration(
                    color: ColorRes.primaryColor.withGreen(80),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SafeArea(bottom: false, child: SizedBox(height: 5.h)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(90.r),
                                child: Image.asset(
                                  AssetsRes.personImg,
                                  fit: BoxFit.cover,
                                  height: 30.h,
                                  width: 30.h,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Hi, Selena",
                                style: Style.textStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: ColorRes.white,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.notifications_rounded,
                            size: 24.sp,
                            color: ColorRes.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () {
                        Get.to(() => const SearchScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        height: 40.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 6.h,
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetsRes.search,
                              color: ColorRes.black,
                              height: 18.sp,
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Text(
                                'Search for jobs',
                                style: Style.textStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Jobs",
                            style: Style.textStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: ColorRes.white,
                            ),
                          ),
                          Text(
                            "View all",
                            style: Style.textStyle(
                              fontSize: 12,
                              color: ColorRes.white,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: Globals.instance.largeScreen ? 140.h : 120.h,
                      child: PageView.builder(
                        controller: controller,
                        padEnds: false,
                        scrollDirection: Axis.horizontal,
                        itemCount: topJobs.length,
                        itemBuilder: (context, index) {
                          var data = topJobs[index];
                          return Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 16.w : 10.w,
                              right: index == (topJobs.length - 1) ? 16.w : 0,
                            ),
                            child: JobItemView(data),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Posted Jobs",
                    style: Style.textStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "View all",
                    style: Style.textStyle(
                      fontSize: 12,
                      color: ColorRes.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 6.h,
              ),
              itemCount: jobList.length,
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemBuilder: (context, index) {
                final data = jobList[index];
                return JobItemView(data);
              },
            ),
          ],
        ),
      ),
    );
  }
}
