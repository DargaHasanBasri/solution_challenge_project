import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/view_all_campaigns_page/companents/all_campaigns.dart';
import 'package:solution_challenge_project/views/view_all_campaigns_page/companents/all_campaigns_info.dart';

class ViewAllCampaigns extends StatelessWidget {
  const ViewAllCampaigns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const ArrowLeft(),
        elevation: 0,
        backgroundColor: AppConstants.mainWhite,
        title: Text(
          "Campaigns",
          style: TextStyle(
            fontFamily: FontConstants.playfairDisplayMedium,
            fontSize: 22.sp,
            color: AppConstants.mainBlue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
              ),
              child: const AllCampaigns(
                imageAdress: "assets/images/post1.png",
                countryName: "Africa",
                navigationName: NavigationConstants.campaignsDetails1,
                profileAdress: "assets/images/profile7.png",
              ),
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "Donate for people with Hookworm",
            ),
            const AllCampaigns(
              imageAdress: "assets/images/post2.png",
              countryName: "Portugal",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/profile2.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "Donate for people with Cataract",
            ),
            const AllCampaigns(
              imageAdress: "assets/images/post3.png",
              countryName: "Congo",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/profile3.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "Donate for people with Cholera",
            ),
            const AllCampaigns(
              imageAdress: "assets/images/post4.png",
              countryName: "India",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/profile5.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "Donate for people with Tuberculosis",
            ),
            const AllCampaigns(
              imageAdress: "assets/images/post5.png",
              countryName: "Africa",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/profile6.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "Donate for people with Hookworm",
            ),
            const AllCampaigns(
              imageAdress: "assets/images/post6.png",
              countryName: "Niger",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/profile1.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "Donate for people with Tuberculosis",
            ),
            const AllCampaigns(
              imageAdress: "assets/images/post7.png",
              countryName: "Portugal",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/profile3.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "Donate for people with Cataract",
            ),
            const AllCampaigns(
              imageAdress: "assets/images/post8.png",
              countryName: "Congo ",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/profile4.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "Donate for people with Cholera",
            ),
            const AllCampaigns(
              imageAdress: "assets/images/post9.png",
              countryName: "Africa",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/profile5.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "Donate for people with Hookworm",
            ),
            const AllCampaigns(
              imageAdress: "assets/images/post10.png",
              countryName: "Niger",
              navigationName: NavigationConstants.campaignsDetails1,
              profileAdress: "assets/images/profile6.png",
            ),
            const AllCampaignsInfo(
              navigationInfoName: NavigationConstants.campaignsDetails1,
              infoTitle: "donate for people with Malaria",
            ),
          ],
        ),
      ),
    );
  }
}
