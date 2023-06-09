import 'package:solution_challenge_project/export.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginPageLogo(),
            Container(
              color: AppConstants.mainWhite,
              child: Center(
                child: Image.asset(
                  "assets/images/splash_photo.png",
                  width: 250.w,
                  height: 200.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 130.w),
              child: Container(
                width: 115.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppConstants.mainBlue,
                ),
                child: Center(
                  child: Text(
                    "Organization",
                    style: TextStyle(
                      fontFamily: FontConstants.playfairDisplayRegular,
                      fontSize: 18.sp,
                      color: AppConstants.mainWhite,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 37.w),
              child: const UserTextFormField(hintTextTitle: "User Name"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: const PasswordTextFormField(hintTextTitle: "Password"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, right: 40.w),
              child: Align(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    text: "I forgot my password.",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: FontConstants.openSansBold,
                      decoration: TextDecoration.underline,
                      color: AppConstants.mainOrange,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap =
                          () => Get.toNamed(NavigationConstants.passwordReset),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: const ActionButton(
                buttonTitle: "Login",
                navigationName: NavigationConstants.navbar,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Text(
                    "Don't you have an account?",
                    style: TextStyle(
                      fontFamily: FontConstants.openSansBold,
                      fontSize: 12.sp,
                      color: AppConstants.mainBlue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9.h, left: 3.w),
                  child: RichText(
                    text: TextSpan(
                      text: "Sign up now.",
                      style: TextStyle(
                        fontFamily: FontConstants.openSansBold,
                        fontSize: 12.sp,
                        decoration: TextDecoration.underline,
                        color: AppConstants.mainOrange,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(NavigationConstants.registerPage);
                        },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
