import 'package:solution_challenge_project/export.dart';

class LoginPageLogo extends StatelessWidget {
  const LoginPageLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200.h,
          decoration: BoxDecoration(
            color: AppConstants.mainOrange,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35.r),
              bottomRight: Radius.circular(35.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Align(
              alignment: Alignment.center,
              child: Opacity(
                opacity: 0.1,
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 100.sp,
                    color: AppConstants.mainWhite,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
