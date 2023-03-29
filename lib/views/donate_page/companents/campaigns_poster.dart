import 'package:solution_challenge_project/export.dart';

class CampaignPoster extends StatelessWidget {
  const CampaignPoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265.w,
      height: 875.h,
      color: AppConstants.mainOrange,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 20.w),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                bottomLeft: Radius.circular(25.r),
              ),
              child: Material(
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    width: 260.w,
                    height: 530.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        bottomLeft: Radius.circular(25.r),
                      ),
                    ),
                    child: Opacity(
                      opacity: 0.84,
                      child: Image.asset(
                        "assets/images/resim4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 700.h, left: 20.w),
            child: const ActionButton(buttonTitle: "Enter Amount"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.w, top: 45.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Material(
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    width: 80.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppConstants.mainBlue,
                    ),
                    child: Align(
                      child: Text(
                        "China",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: AppConstants.mainWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
