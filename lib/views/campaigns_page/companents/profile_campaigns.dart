import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/campaigns_page/companents/profile.dart';

class ProfileCampaigns extends StatelessWidget {
  const ProfileCampaigns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Profile(profileAdress: "assets/images/resim1.png"),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            "By MSK Organigation",
            style: TextStyle(
              fontSize: 16.sp,
              color: AppConstants.mainWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
