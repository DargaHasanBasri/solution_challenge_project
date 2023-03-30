import 'package:solution_challenge_project/core/constants/font_constants.dart';
import 'package:solution_challenge_project/export.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: Text(
                "Create Account",
                style: TextStyle(
                  fontFamily: FontConstants.playfairDisplaySemiBold,
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35.h, left: 37.w),
              child: const UserTextFormField(hintTextTitle: "First Name"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: const UserTextFormField(hintTextTitle: "Last Name"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: const UserTextFormField(hintTextTitle: "Nickname"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: const UserTextFormField(hintTextTitle: "Mail Adress"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: const UserTextFormField(hintTextTitle: "Phone Number"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: const PasswordTextFormField(hintTextTitle: "Password"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: const UserTextFormField(hintTextTitle: "Profession"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 37.w),
              child: const ActionButton(buttonTitle: "Login"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 13.h, left: 47.w),
              child: Text(
                "By clicking Register, you agree on our Privacy Policy.",
                style: TextStyle(
                  fontFamily: FontConstants.openSansBold,
                  fontSize: 11.sp,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(NavigationConstants.loginPage);
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: AppConstants.mainBlue,
                        fontFamily: FontConstants.openSansBold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
