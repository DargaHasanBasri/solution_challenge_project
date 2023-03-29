import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/campaigns_details_page/companents/campaigns_content.dart';
import 'package:solution_challenge_project/views/campaigns_details_page/companents/donate_content.dart';
import 'package:solution_challenge_project/views/campaigns_details_page/companents/donate_info.dart';
import 'package:solution_challenge_project/views/campaigns_details_page/companents/profile_campaigns.dart';
import 'package:solution_challenge_project/views/companents/arrow_left.dart';

class CampaignsDetails1 extends StatelessWidget {
  const CampaignsDetails1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Opacity(
                  opacity: 0.8,
                  child: SizedBox(
                    width: 375.w,
                    height: 300.h,
                    child: Image.asset(
                      "assets/images/resim1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: const ArrowLeft(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 155.h, left: 15.w),
                  child: const ProfileCampaigns(),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 215.h),
                      child: const CampaignsContent(
                        contentTitle: "Feed Children in the china",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 345.h),
                      child: const DonateContent(),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 310.h),
                        child: const DonateInfo(),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 745.h),
                  child: const Center(
                    child: ActionButton(
                      buttonTitle: "Donate",
                      navigationName: NavigationConstants.donatePage,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
