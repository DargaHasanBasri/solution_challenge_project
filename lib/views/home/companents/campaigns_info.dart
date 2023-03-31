import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/companents/progress_bar.dart';

class CampaignsInfo extends StatelessWidget {
  final dynamic navigationInfoName;
  final double progressValue;
  final String progressInfo;
  final String profileAdress1;
  final String profileAdress2;
  final String profileAdress3;
  final String infoTitle;
  final String peopleInfo;
  const CampaignsInfo({
    super.key,
    this.navigationInfoName,
    required this.progressValue,
    required this.progressInfo,
    required this.profileAdress1,
    required this.profileAdress2,
    required this.profileAdress3,
    required this.infoTitle,
    required this.peopleInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Ink(
          width: 270.w,
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
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(profileAdress1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(profileAdress2),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.w),
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(profileAdress3),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Text(
                  "$peopleInfo people Donate",
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
                    infoTitle,
                    style: TextStyle(
                      fontFamily: FontConstants.openSansMedium,
                      fontSize: 12.sp,
                      color: AppConstants.mainBlack,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: RichText(
                      text: TextSpan(
                        text: " Read More...",
                        style: TextStyle(
                          fontFamily: FontConstants.openSansMedium,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: SizedBox(
                      width: 260.h,
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
