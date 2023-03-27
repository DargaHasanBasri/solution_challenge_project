import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/campaigns_page/companents/profile.dart';

class CampaignsInfo extends StatelessWidget {
  final dynamic navigationInfoName;
  const CampaignsInfo({
    super.key,
    this.navigationInfoName,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15.r),
        bottomRight: Radius.circular(15.r),
      ),
      child: Material(
        child: InkWell(
          onTap: () => Get.toNamed(navigationInfoName),
          child: Stack(
            children: [
              Ink(
                width: 250.w,
                height: 125.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.r),
                    bottomRight: Radius.circular(15.r),
                  ),
                  color: AppConstants.mainWhite,
                ),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: const Profile(
                            profileAdress: "assets/images/resim1.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: const Profile(
                            profileAdress: "assets/images/resim2.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50.w),
                        child: const Profile(
                            profileAdress: "assets/images/resim3.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
