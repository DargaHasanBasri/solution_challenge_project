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
            Container(
              width: 444.w,
              height: 300.h,
              decoration: BoxDecoration(
                color: AppConstants.mainOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200.r),
                  bottomRight: Radius.circular(200.r),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h, left: 37.w),
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
              padding: EdgeInsets.only(top: 20.h, left: 37.w),
              child: const ActionButton(buttonTitle: "Login"),
            ),
          ],
        ),
      ),
    );
  }
}
