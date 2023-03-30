import 'package:solution_challenge_project/core/constants/font_constants.dart';
import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/companents/arrow_left.dart';
import 'package:solution_challenge_project/views/view_all_campaigns_page/companents/all_campaigns.dart';
import 'package:solution_challenge_project/views/view_all_campaigns_page/companents/all_campaigns_info.dart';

class ViewAllCampaigns extends StatelessWidget {
  const ViewAllCampaigns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: const ArrowLeft(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32.h),
                  child: Text(
                    "Campaigns",
                    style: TextStyle(
                      fontFamily: FontConstants.playfairDisplayMedium,
                      fontSize: 22.sp,
                      color: AppConstants.mainBlue,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
              ),
              child: const AllCampaigns(
                imageAdress: "assets/images/resim1.png",
                countryName: "Africa",
                navigationName: NavigationConstants.campaignsDetails1,
                profileAdress: "assets/images/resim1.png",
              ),
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
            ),
            const AllCampaigns(
              imageAdress: "assets/images/resim2.png",
              countryName: "Africa",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/resim2.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
            ),
            const AllCampaigns(
              imageAdress: "assets/images/resim3.png",
              countryName: "Africa",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/resim3.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
            ),
            const AllCampaigns(
              imageAdress: "assets/images/resim1.png",
              countryName: "Africa",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/resim1.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
            ),
            const AllCampaigns(
              imageAdress: "assets/images/resim2.png",
              countryName: "Africa",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/resim2.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
            ),
          ],
        ),
      ),
    );
  }
}
