import 'package:solution_challenge_project/export.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Get.back(),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 7.h),
          child: Text(
            "Password Reset",
            style: TextStyle(
              fontFamily: FontConstants.playfairDisplaySemiBold,
              fontSize: 18.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 37.w, right: 37.w),
              child: Text.rich(
                TextSpan(
                  text: "I think you forgot your password! Please enter the  ",
                  style: TextStyle(
                    fontFamily: FontConstants.openSansMedium,
                    color: AppConstants.mainBlue,
                    fontSize: 15.sp,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'email address',
                      style: TextStyle(
                        fontFamily: FontConstants.openSansMedium,
                        color: AppConstants.mainBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' and reset your password with the verification code you receive.',
                      style: TextStyle(
                        fontFamily: FontConstants.openSansMedium,
                        color: AppConstants.mainBlue,
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 37.w),
              child: const UserTextFormField(hintTextTitle: "Email address"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 37.w),
              child: const ActionButton(
                buttonTitle: "Get Verification Code",
                navigationName: NavigationConstants.newPassword,
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
                      fontFamily: FontConstants.openSansMedium,
                      fontSize: 12.sp,
                      color: AppConstants.mainBlue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9.h, left: 3.w),
                  child: RichText(
                    text: TextSpan(
                      text: "Sign up now",
                      style: TextStyle(
                        fontSize: 12.sp,
                        decoration: TextDecoration.underline,
                        color: AppConstants.mainOrange,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => Get.toNamed(NavigationConstants.registerPage),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 100.w,
                horizontal: 120.h,
              ),
              child: SizedBox(
                width: 200.w,
                height: 190.h,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
