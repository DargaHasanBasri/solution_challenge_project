import 'package:solution_challenge_project/export.dart';

class DonateAmount extends StatelessWidget {
  const DonateAmount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
              padding: EdgeInsets.only(top: 10.h, left: 20.w),
              child: Column(
                children: [
                  Text(
                    "D",
                    style: TextStyle(
                      fontSize: 70.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "O",
                    style: TextStyle(
                      fontSize: 70.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "N",
                    style: TextStyle(
                      fontSize: 70.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "A",
                    style: TextStyle(
                      fontSize: 70.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "T",
                    style: TextStyle(
                      fontSize: 70.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "E",
                    style: TextStyle(
                      fontSize: 70.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60.r),
                ),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Get.defaultDialog(
                        title: Text('payment_method'.tr).data!,
                        backgroundColor: AppConstants.mainBlue,
                        content: SizedBox(
                          width: 800.w,
                          height: 300.h,
                          child: Column(
                            children: [
                              Wrap(
                                spacing: 8,
                                children: [
                                  Chip(label: Text('cash'.tr)),
                                  Chip(label: Text('card'.tr)),
                                  Chip(label: Text('qr'.tr)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Ink(
                      width: 105.w,
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
      ),
    );
  }
}
