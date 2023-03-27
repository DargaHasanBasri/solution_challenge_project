import 'package:solution_challenge_project/export.dart';

class CampaignsInkwell extends StatelessWidget {
  const CampaignsInkwell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 250.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppConstants.mainBlue,
      ),
    );
  }
}
