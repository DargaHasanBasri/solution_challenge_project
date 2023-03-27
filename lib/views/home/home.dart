import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/home/companents/campaigns_inkwell.dart';
import 'package:solution_challenge_project/views/home/companents/profile_hello.dart';
import 'package:solution_challenge_project/views/home/companents/volunteers_inkwell.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  const CampaignsInkwell(),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: const CampaignsInkwell(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 15.w),
                    child: const CampaignsInkwell(),
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
                padding: EdgeInsets.only(top: 35.h, left: 170.w),
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
                  const VolunteersInkwell(),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: const VolunteersInkwell(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: const VolunteersInkwell(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: const VolunteersInkwell(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 15.w),
                    child: const VolunteersInkwell(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
