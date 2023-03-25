import 'package:flutter/gestures.dart';
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
            "Parola Sıfırlama",
            style: TextStyle(
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
            padding: EdgeInsets.only(left: 37.w),
            child: Text.rich(
              TextSpan(
                text: "Sanırım parolanı unuttun! Lütfen hesabına ait\nolan ",
                style: TextStyle(
                  color: AppConstants.mainBlue,
                  fontSize: 15.sp,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'e-posta adresini gir',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                  TextSpan(
                    text: ' ve gelen doğrulama\nkodu ile parolanı sıfırla.',
                    style: TextStyle(
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
            child: const UserTextFormField(hintTextTitle: "E-posta adresi"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 37.w),
            child: const ActionButton(
              buttonTitle: "Doğrulama Kodu Al",
              navigationName: NavigationConstants.newPassword,
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
                      ..onTap =
                          () => Get.toNamed(NavigationConstants.registerPage),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
