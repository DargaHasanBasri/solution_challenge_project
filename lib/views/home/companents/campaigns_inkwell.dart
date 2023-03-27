import 'package:solution_challenge_project/export.dart';

class CampaignsInkwell extends StatelessWidget {
  final String imageAdress;
  final String countryName;
  const CampaignsInkwell({
    super.key,
    required this.imageAdress,
    required this.countryName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: Material(
            child: InkWell(
              onTap: () {},
              child: Ink(
                width: 250.w,
                height: 250.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
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
          bottom: 230.h,
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
    );
  }
}
