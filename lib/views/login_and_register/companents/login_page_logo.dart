import 'package:solution_challenge_project/export.dart';

class LoginPageLogo extends StatelessWidget {
  const LoginPageLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.h,
      decoration: BoxDecoration(
        color: AppConstants.mainOrange,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(200.r),
          bottomRight: Radius.circular(200.r),
        ),
      ),
    );
  }
}
