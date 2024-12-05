import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_seeking_ui/model/job_model.dart';
import 'package:job_seeking_ui/services/global_service.dart';
import 'package:job_seeking_ui/utils/assets_res.dart';
import 'package:job_seeking_ui/utils/color_res.dart';
import 'package:job_seeking_ui/utils/style.dart';

class JobItemView extends StatelessWidget {
  final JobModel data;
  final bool showDescription;
  const JobItemView(this.data, {this.showDescription = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorRes.white,
        border: Border.all(
          color: ColorRes.ultraLightGrey,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.w,
              right: 8.w,
              top: 8.w,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Company Logo
                CircleAvatar(
                  radius: 20.r,
                  backgroundImage: AssetImage(data.companyLogo),
                ),
                SizedBox(width: 16.w),
                // Job Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Style.textStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        data.company,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Style.textStyle(
                          fontSize: 12,
                          color: ColorRes.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.w),
                Text(
                  "${_formatTimeAgo(data.postedAt)} ago",
                  style: Style.textStyle(
                    fontSize: 12.0,
                    color: ColorRes.grey,
                  ),
                ),
              ],
            ),
          ),
          if (showDescription) ...[
            SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.only(
                left: 8.w,
                right: 8.w,
              ),
              child: Text(
                data.description,
                maxLines: Globals.instance.largeScreen ? 1 : 2,
                overflow: TextOverflow.ellipsis,
                style: Style.textStyle(
                  fontSize: 12,
                  color: ColorRes.lightBlack,
                ),
              ),
            ),
          ],
          const Divider(
            height: 24.0,
            color: ColorRes.ultraLightGrey,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.w,
              right: 8.w,
              bottom: 8.w,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        AssetsRes.clock,
                        height: 12.sp,
                        color: ColorRes.grey,
                      ),
                      SizedBox(width: 4.w),
                      Flexible(
                        child: Text(
                          data.jobType,
                          style: Style.textStyle(
                            fontSize: 12.0,
                            color: ColorRes.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        AssetsRes.location,
                        height: 12.sp,
                        color: ColorRes.grey,
                      ),
                      SizedBox(width: 4.w),
                      Flexible(
                        child: Text(
                          data.locationType,
                          style: Style.textStyle(
                            fontSize: 12.0,
                            color: ColorRes.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      AssetsRes.user,
                      height: 12.sp,
                      color: ColorRes.grey,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "${data.applicants}",
                      style: Style.textStyle(
                        fontSize: 12.0,
                        color: ColorRes.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatTimeAgo(DateTime postedAt) {
    final duration = DateTime.now().difference(postedAt);
    if (duration.inHours < 1) {
      return "${duration.inMinutes} minutes";
    } else if (duration.inHours < 24) {
      return "${duration.inHours} hours";
    } else {
      return "${duration.inDays} days";
    }
  }
}
