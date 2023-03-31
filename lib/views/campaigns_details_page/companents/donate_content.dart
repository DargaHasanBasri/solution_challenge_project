import 'package:solution_challenge_project/export.dart';

class DonateContent extends StatelessWidget {
  const DonateContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 450.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        color: AppConstants.mainWhite,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 180.h, left: 25.w, right: 15.w),
        child: Text(
          "Hookworm disease is a deadly problem that has been affecting the population of Africa for years,"
          "and urgent health measures need to be taken for its treatment. Although the increase of hookworm disease "
          "over time has been prevented, experts say there is a possibility of its resurgence.",
          style: TextStyle(
            fontFamily: FontConstants.openSansMedium,
            fontSize: 12.sp,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
