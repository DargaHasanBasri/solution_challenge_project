import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/campaigns_details_page/companents/profile.dart';

class CampaignsInfo extends StatelessWidget {
  final dynamic navigationInfoName;
  const CampaignsInfo({
    super.key,
    this.navigationInfoName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Ink(
          width: 250.w,
          height: 125.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.r),
              bottomRight: Radius.circular(15.r),
            ),
            color: AppConstants.mainWhite,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: const Profile(
                        profileAdress: "assets/images/resim1.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: const Profile(
                        profileAdress: "assets/images/resim2.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.w),
                    child: const Profile(
                        profileAdress: "assets/images/resim3.png"),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Text(
                  "6.258+ people Donate",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppConstants.mainBlack,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 70.h, left: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Donate for hungry people.",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppConstants.mainBlack,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: RichText(
                      text: TextSpan(
                        text: "Read More...",
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: AppConstants.mainOrange,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(navigationInfoName),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
