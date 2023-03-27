import 'package:flutter/gestures.dart';
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
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 37.w),
              child: Text(
                "Hello,",
                style: TextStyle(
                  fontSize: 28.sp,
                  color: AppConstants.mainOrange,
                  //fontFamily: FontConstants.robotoBold,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 79.w),
                  child: UserButton(
                    buttonTitle: "Kullanıcı",
                    buttonBorder: BorderRadius.only(
                      topLeft: Radius.circular(8.r),
                      bottomLeft: Radius.circular(8.r),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 11.w),
                  child: UserButton(
                    buttonTitle: "Kurum",
                    buttonBorder: BorderRadius.only(
                      topRight: Radius.circular(8.r),
                      bottomRight: Radius.circular(8.r),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 21.h, left: 37.w),
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
                    text: "Parolamı unuttum",
                    style: TextStyle(
                      fontSize: 12.sp,
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
                navigationName: NavigationConstants.registerPage,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Text(
                    "Bir hesabın yok mu?",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppConstants.mainBlue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9.h, left: 3.w),
                  child: RichText(
                    text: TextSpan(
                      text: "Hemen Kaydol",
                      style: TextStyle(
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
