import 'package:solution_challenge_project/export.dart';

class LoginPageLogo extends StatelessWidget {
  const LoginPageLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 444.w,
      height: 250.h,
      decoration: BoxDecoration(
        color: AppConstants.mainOrange,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.r),
          bottomRight: Radius.circular(40.r),
        ),
      ),
    );
  }
}
