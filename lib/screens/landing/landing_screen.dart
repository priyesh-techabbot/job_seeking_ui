import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:job_seeking_ui/screens/dashboard/dashboard_screen.dart';
import 'package:job_seeking_ui/utils/assets_res.dart';
import 'package:job_seeking_ui/utils/color_res.dart';
import 'package:job_seeking_ui/utils/common/evolved_button.dart';
import 'package:job_seeking_ui/utils/style.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white,
      body: Column(
        children: [
          Image.asset(
            AssetsRes.loginBg,
            height: Get.height / 1.6,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: ColorRes.white,
                    blurRadius: 15,
                    spreadRadius: 20,
                    offset: Offset(0, -4))
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don't miss out your chance to get a job",
                  textAlign: TextAlign.center,
                  style: Style.textStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  "Explore thousands of job opportunities tailored to your skills and preferences.",
                  textAlign: TextAlign.center,
                  style: Style.textStyle(
                    fontSize: 12,
                    color: ColorRes.grey,
                  ),
                ),
                SizedBox(height: 10.h),
                EvolvedButton(
                  title: 'Login',
                  onTap: () => Get.to(() => const DashboardScreen()),
                  borderRadius: 8.r,
                ),
                SizedBox(height: 10.h),
                EvolvedButton(
                  title: 'Signup',
                  onTap: () => Get.to(() => const DashboardScreen()),
                  borderColor: ColorRes.primaryColor,
                  onlyBorder: true,
                  borderRadius: 8.r,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
