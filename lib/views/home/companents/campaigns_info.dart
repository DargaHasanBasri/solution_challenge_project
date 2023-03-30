import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/companents/profile.dart';
import 'package:solution_challenge_project/views/companents/progress_bar.dart';

class CampaignsInfo extends StatelessWidget {
  final dynamic navigationInfoName;
  final double progressValue;
  final String progressInfo;
  const CampaignsInfo({
    super.key,
    this.navigationInfoName,
    required this.progressValue,
    required this.progressInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Ink(
          width: 250.w,
          height: 145.h,
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
                    fontFamily: FontConstants.openSansBold,
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
                      fontFamily: FontConstants.openSansMedium,
                      fontSize: 15.sp,
                      color: AppConstants.mainBlack,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: RichText(
                      text: TextSpan(
                        text: "Read More...",
                        style: TextStyle(
                          fontSize: 9.sp,
                          color: AppConstants.mainOrange,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(navigationInfoName),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: SizedBox(
                      width: 240.h,
                      child: FAProgressBar(
                        currentValue: progressValue,
                        displayText: '%',
                        size: 10.w,
                        progressColor: AppConstants.mainOrange,
                        backgroundColor: AppConstants.fillColorText,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, left: 3.w),
                    child: Text(
                      progressInfo,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppConstants.mainBlack,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
