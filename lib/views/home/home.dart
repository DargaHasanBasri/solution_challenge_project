import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/home/companents/campaigns_info.dart';
import 'package:solution_challenge_project/views/home/companents/campaigns_inkwell.dart';
import 'package:solution_challenge_project/views/home/companents/profile_hello.dart';
import 'package:solution_challenge_project/views/home/companents/volunteers_inkwell.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.fillColorText,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHello(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25.h, left: 25.w),
                  child: Text(
                    "Need to Help",
                    style: TextStyle(
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.h, left: 170.w),
                  child: RichText(
                    text: TextSpan(
                      text: "View All",
                      style: TextStyle(
                        fontFamily: FontConstants.openSansMedium,
                        fontSize: 16.sp,
                        color: AppConstants.mainOrange,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed(
                              NavigationConstants.viewAllCampaigns,
                            ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h, left: 25.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: const [
                        CampaignsInkwell(
                          imageAdress: "assets/images/post5.png",
                          countryName: "Africa",
                          navigationName: NavigationConstants.campaignsDetails1,
                        ),
                        CampaignsInfo(
                          navigationInfoName:
                              NavigationConstants.campaignsDetails1,
                          progressValue: 60,
                          progressInfo: "Raised",
                          profileAdress1: "assets/images/profile1.png",
                          profileAdress2: "assets/images/profile3.png",
                          profileAdress3: "assets/images/profile7.png",
                        ),
                      ],
                    ),
                    SizedBox(width: 15.h),
                    Column(
                      children: const [
                        CampaignsInkwell(
                          imageAdress: "assets/images/post2.png",
                          countryName: "Africa",
                          navigationName: NavigationConstants.campaignsDetails1,
                        ),
                        CampaignsInfo(
                          navigationInfoName:
                              NavigationConstants.campaignsDetails1,
                          progressValue: 50,
                          progressInfo: "Raised",
                          profileAdress1: "assets/images/profile6.png",
                          profileAdress2: "assets/images/profile1.png",
                          profileAdress3: "assets/images/profile5.png",
                        ),
                      ],
                    ),
                    SizedBox(width: 15.h),
                    Column(
                      children: const [
                        CampaignsInkwell(
                          imageAdress: "assets/images/post1.png",
                          countryName: "Africa",
                          navigationName: NavigationConstants.campaignsDetails1,
                        ),
                        CampaignsInfo(
                          navigationInfoName:
                              NavigationConstants.campaignsDetails1,
                          progressValue: 70,
                          progressInfo: "Raised",
                          profileAdress1: "assets/images/profile1.png",
                          profileAdress2: "assets/images/profile3.png",
                          profileAdress3: "assets/images/profile6.png",
                        ),
                      ],
                    ),
                    SizedBox(width: 15.h),
                    Column(
                      children: const [
                        CampaignsInkwell(
                          imageAdress: "assets/images/post4.png",
                          countryName: "Africa",
                          navigationName: NavigationConstants.campaignsDetails1,
                        ),
                        CampaignsInfo(
                          navigationInfoName:
                              NavigationConstants.campaignsDetails1,
                          progressValue: 70,
                          progressInfo: "Raised",
                          profileAdress1: "assets/images/profile1.png",
                          profileAdress2: "assets/images/profile3.png",
                          profileAdress3: "assets/images/profile6.png",
                        ),
                      ],
                    ),
                    SizedBox(width: 15.h),
                    Column(
                      children: const [
                        CampaignsInkwell(
                          imageAdress: "assets/images/post7.png",
                          countryName: "Africa",
                          navigationName: NavigationConstants.campaignsDetails1,
                        ),
                        CampaignsInfo(
                          navigationInfoName:
                              NavigationConstants.campaignsDetails1,
                          progressValue: 70,
                          progressInfo: "Raised",
                          profileAdress1: "assets/images/profile1.png",
                          profileAdress2: "assets/images/profile3.png",
                          profileAdress3: "assets/images/profile6.png",
                        ),
                      ],
                    ),
                    SizedBox(width: 15.h),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 25.w),
                  child: Text(
                    "Volunteers",
                    style: TextStyle(
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 190.w),
                  child: RichText(
                    text: TextSpan(
                      text: "View All",
                      style: TextStyle(
                        fontFamily: FontConstants.openSansMedium,
                        fontSize: 16.sp,
                        color: AppConstants.mainOrange,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 25.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VolunteersInkwell(
                        imageAdress: "assets/images/profile1.png"),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: const VolunteersInkwell(
                        imageAdress: "assets/images/profile2.png",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: const VolunteersInkwell(
                        imageAdress: "assets/images/profile3.png",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: const VolunteersInkwell(
                        imageAdress: "assets/images/profile4.png",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, right: 15.w),
                      child: const VolunteersInkwell(
                        imageAdress: "assets/images/profile2.png",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
