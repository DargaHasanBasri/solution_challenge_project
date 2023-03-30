import 'package:solution_challenge_project/core/constants/font_constants.dart';
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
                          imageAdress: "assets/images/resim1.png",
                          countryName: "Africa",
                          navigationName: NavigationConstants.campaignsDetails1,
                        ),
                        CampaignsInfo(
                          navigationInfoName:
                              NavigationConstants.campaignsDetails1,
                          progressValue: 60,
                          progressInfo: "Raised",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15.h,
                    ),
                    Column(
                      children: const [
                        CampaignsInkwell(
                          imageAdress: "assets/images/resim1.png",
                          countryName: "Africa",
                          navigationName: NavigationConstants.campaignsDetails1,
                        ),
                        CampaignsInfo(
                          navigationInfoName:
                              NavigationConstants.campaignsDetails1,
                          progressValue: 50,
                          progressInfo: "Raised",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15.h,
                    ),
                    Column(
                      children: const [
                        CampaignsInkwell(
                          imageAdress: "assets/images/resim1.png",
                          countryName: "Africa",
                          navigationName: NavigationConstants.campaignsDetails1,
                        ),
                        CampaignsInfo(
                          navigationInfoName:
                              NavigationConstants.campaignsDetails1,
                          progressValue: 70,
                          progressInfo: "Raised",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15.h,
                    ),
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
              padding: EdgeInsets.only(top: 10.h, left: 25.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VolunteersInkwell(
                        imageAdress: "assets/images/resim2.png"),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: const VolunteersInkwell(
                        imageAdress: "assets/images/resim3.png",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: const VolunteersInkwell(
                        imageAdress: "assets/images/resim4.png",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: const VolunteersInkwell(
                        imageAdress: "assets/images/resim1.png",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, right: 15.w),
                      child: const VolunteersInkwell(
                        imageAdress: "assets/images/resim2.png",
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
