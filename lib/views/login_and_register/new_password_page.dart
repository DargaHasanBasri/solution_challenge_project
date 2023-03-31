import 'package:solution_challenge_project/export.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
            "Create New Password",
            style: TextStyle(
              fontFamily: FontConstants.playfairDisplayRegular,
              fontSize: 18.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 37.w, right: 37.w),
            child: Text(
              "It's time to reset your password now. You can reset your password by entering a password that complies with the rules and entering it again.",
              style: TextStyle(
                fontFamily: FontConstants.openSansBold,
                fontSize: 14.sp,
                color: AppConstants.mainBlue,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 37.w),
            child: const UserTextFormField(hintTextTitle: "New Password"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 37.w),
            child:
                const UserTextFormField(hintTextTitle: "Password Confirmation"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 37.w),
            child: const ActionButton(
              buttonTitle: "Save Password",
              navigationName: NavigationConstants.loginPage,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 100.w,
              horizontal: 120.h,
            ),
            child: SizedBox(
              width: 400.w,
              height: 180.h,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}
