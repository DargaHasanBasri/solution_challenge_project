import 'package:solution_challenge_project/export.dart';

class DonateAmount extends StatelessWidget {
  const DonateAmount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 875.h,
      width: 110.w,
      color: AppConstants.mainWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: const ArrowLeft(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w, top: 10.h),
            child: Text(
              "\$100.000",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppConstants.mainBlack,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 632.h),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(60.r),
              ),
              child: Material(
                child: InkWell(
                  onTap: () => Get.toNamed(
                    NavigationConstants.campaignsDetails1,
                  ),
                  child: Ink(
                    width: 95.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: AppConstants.mainBlue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60.r),
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/donate-image.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
