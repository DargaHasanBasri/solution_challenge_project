import 'package:solution_challenge_project/core/constants/font_constants.dart';
import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/campaigns_details_page/companents/donate_content.dart';
import 'package:solution_challenge_project/views/campaigns_details_page/companents/donate_info.dart';
import 'package:solution_challenge_project/views/companents/profile.dart';

class CampaignsContent extends StatelessWidget {
  final String contentTitle;
  const CampaignsContent({
    super.key,
    required this.contentTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 375.w,
          height: 180.h,
          decoration: BoxDecoration(
            color: AppConstants.mainOrange,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 10.h, left: 20.w),
            child: Text(
              contentTitle,
              style: TextStyle(
                fontSize: 18.sp,
                color: AppConstants.mainWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 10.w),
                  child:
                      const Profile(profileAdress: "assets/images/resim1.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 30.w),
                  child:
                      const Profile(profileAdress: "assets/images/resim2.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 50.w),
                  child:
                      const Profile(profileAdress: "assets/images/resim3.png"),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.h, left: 10.w),
              child: Text(
                "6.258+ people Donated",
                style: TextStyle(
                  fontFamily: FontConstants.openSansBold,
                  fontSize: 12.sp,
                  color: AppConstants.mainWhite,
                ),
              ),
            )
          ],
        ),
        /* Padding(
          padding: EdgeInsets.only(top: 130.h),
          child: const DonateContent(),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(top: 95.h),
            child: const DonateInfo(),
          ),
        ) */
      ],
    );
  }
}
