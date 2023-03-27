import 'package:solution_challenge_project/export.dart';

class VolunteersInkwell extends StatelessWidget {
  const VolunteersInkwell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppConstants.mainBlue,
      ),
    );
  }
}
