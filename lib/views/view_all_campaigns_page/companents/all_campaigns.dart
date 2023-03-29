import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/companents/divider_build.dart';

class AllCampaigns extends StatelessWidget {
  final String imageAdress;
  final String countryName;
  final dynamic navigationName;
  final String profileAdress;
  const AllCampaigns({
    super.key,
    required this.imageAdress,
    required this.countryName,
    this.navigationName,
    required this.profileAdress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375.w,
          height: 45.h,
          color: AppConstants.mainWhite,
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: DividerBuild(),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage(profileAdress),
                    ),
                  ),
                  Text(
                    "Kullanıcı Adı",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppConstants.mainOrange,
                    ),
                  )
                ],
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: DividerBuild(),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Material(
              child: InkWell(
                onTap: () => Get.toNamed(navigationName),
                child: Ink(
                  width: 375.w,
                  height: 250.h,
                  child: Image.asset(
                    imageAdress,
                    fit: BoxFit.cover,
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
