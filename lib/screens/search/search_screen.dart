import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_seeking_ui/model/job_model.dart';
import 'package:job_seeking_ui/screens/home/widget/job_item_view.dart';
import 'package:job_seeking_ui/utils/assets_res.dart';
import 'package:job_seeking_ui/utils/color_res.dart';
import 'package:job_seeking_ui/utils/style.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String selected = 'Jobs';
  List<String> jobType = [
    'Jobs',
    'People',
    'Groups',
    'Companies',
    'Date Posted'
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            color: ColorRes.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
          height: 40.h,
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 6.h,
          ),
          margin: EdgeInsets.only(right: 16.w),
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
                  'Remote',
                  style: Style.textStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: SizedBox(
                    height: 20.sp,
                    width: 20.sp,
                    child: Image.asset(
                      AssetsRes.filter,
                      color: ColorRes.black,
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                const VerticalDivider(width: 1),
                Expanded(
                  child: SizedBox(
                    height: 30.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      itemBuilder: (context, index) {
                        var data = jobType[index];
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: data == selected
                                ? ColorRes.primaryColor
                                : ColorRes.white,
                            border: Border.all(color: ColorRes.primaryColor),
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text(
                            data,
                            style: Style.textStyle(
                              color: data == selected
                                  ? ColorRes.white
                                  : ColorRes.black,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 10.w);
                      },
                      itemCount: jobType.length,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 24.0,
            color: ColorRes.ultraLightGrey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "${jobList.length} Result",
              style: Style.textStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 10.h,
              ),
              itemCount: jobList.length,
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemBuilder: (context, index) {
                final data = jobList[index];
                return JobItemView(data, showDescription: false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
