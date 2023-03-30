import 'package:solution_challenge_project/export.dart';

class CampaignsInkwell extends StatelessWidget {
  final String imageAdress;
  final String countryName;
  final dynamic navigationName;
  const CampaignsInkwell({
    super.key,
    required this.imageAdress,
    required this.countryName,
    this.navigationName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
              ),
              child: Material(
                child: InkWell(
                  onTap: () => Get.toNamed(navigationName),
                  child: Ink(
                    width: 250.w,
                    height: 125.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r),
                      ),
                    ),
                    child: Image.asset(
                      imageAdress,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10.w,
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
                          countryName,
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
      ],
    );
  }
}
