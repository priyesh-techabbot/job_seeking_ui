import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:job_seeking_ui/screens/home/home_screen.dart';
import 'package:job_seeking_ui/utils/assets_res.dart';
import 'package:job_seeking_ui/utils/color_res.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> screens = [const HomeScreen()];
  RxInt selectedInsex = RxInt(0);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: screens[selectedInsex.value],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: ColorRes.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -1),
                spreadRadius: 1,
                blurRadius: 4,
                color: ColorRes.ultraLightGrey,
              )
            ],
          ),
          child: SafeArea(
            child: Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bottomBarIcon(icon: AssetsRes.home, index: 0),
                  _bottomBarIcon(icon: AssetsRes.message, index: 1),
                  _bottomBarIcon(icon: AssetsRes.bag, index: 2),
                  _bottomBarIcon(icon: AssetsRes.personImg, index: 3),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget _bottomBarIcon({required String icon, required int index}) {
    return index == 3
        ? ClipRRect(
            borderRadius: BorderRadius.circular(90.r),
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
              height: 18.h,
              width: 18.h,
            ),
          )
        : Image.asset(
            icon,
            height: 18.h,
            color: selectedInsex.value == index
                ? ColorRes.primaryColor
                : ColorRes.grey,
          );
  }
}
