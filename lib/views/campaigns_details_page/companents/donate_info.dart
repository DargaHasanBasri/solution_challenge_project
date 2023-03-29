import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:solution_challenge_project/export.dart';

class DonateInfo extends StatelessWidget {
  const DonateInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Stack(
        children: [
          Container(
            width: 340.w,
            height: 150.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: AppConstants.mainWhite,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 135.w),
            child: const CircularSeekBar(
              width: 70,
              height: 70,
              startAngle: 180,
              progress: 60,
              barWidth: 9,
              trackColor: AppConstants.fillColorText,
              progressColor: AppConstants.mainOrange,
              child: Center(
                child: Text("60%"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80.h, left: 40.w),
            child: Text(
              "\t\tGoal\n200.000",
              style: TextStyle(
                fontSize: 18.sp,
                color: AppConstants.mainBlack,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80.h, left: 240.w),
            child: Text(
              "\tRasied\n170.000",
              style: TextStyle(
                fontSize: 18.sp,
                color: AppConstants.mainBlack,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
