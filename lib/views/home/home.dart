import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/home/companents/campaigns_inkwell.dart';
import 'package:solution_challenge_project/views/home/companents/profile_hello.dart';
import 'package:solution_challenge_project/views/home/companents/volunteers_inkwell.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                    const CampaignsInkwell(
                      imageAdress: "assets/images/resim1.png",
                      countryName: "Africa",
                      navigationName: NavigationConstants.campaignsDetails1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: const CampaignsInkwell(
                        imageAdress: "assets/images/resim1.png",
                        countryName: "India",
                        navigationName: NavigationConstants.campaignsDetails1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, right: 15.w),
                      child: const CampaignsInkwell(
                        imageAdress: "assets/images/resim1.png",
                        countryName: "Africa",
                        navigationName: NavigationConstants.campaignsDetails1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 35.h, left: 25.w),
                  child: Text(
                    "Volunteers",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.h, left: 190.w),
                  child: RichText(
                    text: TextSpan(
                      text: "View All",
                      style: TextStyle(
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
              padding: EdgeInsets.only(top: 15.h, left: 25.w),
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppConstants.mainOrange,
        unselectedItemColor: AppConstants.mainBlue,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Share',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Get.toNamed(NavigationConstants.home);
              break;
            case 1:
              Get.toNamed(NavigationConstants.choosePhoto);
              break;
            case 2:
              Get.toNamed(NavigationConstants.profileScreen);
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
