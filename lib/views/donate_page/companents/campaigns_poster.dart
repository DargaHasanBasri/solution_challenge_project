import 'package:solution_challenge_project/export.dart';

class CampaignPoster extends StatelessWidget {
  const CampaignPoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                          "assets/images/post8.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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
            Padding(
              padding: EdgeInsets.only(top: 620.h, left: 30.w),
              child: Text(
                "Feed Children the china",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppConstants.mainWhite,
                  fontFamily: FontConstants.openSansBold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 700.h, left: 20.w),
              child: SizedBox(
                width: 300.w,
                height: 48.h,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: "Enter Amount",
                    filled: true,
                    fillColor: AppConstants.fillColorText,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
