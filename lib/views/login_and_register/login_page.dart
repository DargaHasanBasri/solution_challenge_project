import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100.h, left: 79.w),
                  child: UserButton(
                    buttonTitle: "Kullanıcı",
                    buttonBorder: BorderRadius.only(
                      topLeft: Radius.circular(8.r),
                      bottomLeft: Radius.circular(8.r),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100.h, left: 11.w),
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
                navigationName: NavigationConstants.home,
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
            /* SizedBox(
              height: 50,
              width: 150,
              child: FAProgressBar(
                currentValue: 25,
                displayText: '%',
                direction: Axis.vertical,
                changeProgressColor: AppConstants.fillColorText,
                animatedDuration: Duration(milliseconds: 500),
              ),
            ) */
          ],
        ),
      ),
    );
  }
}
