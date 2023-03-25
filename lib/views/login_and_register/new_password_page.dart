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
            "Yeni Parola Oluştur",
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
            padding: EdgeInsets.only(left: 37.h),
            child: Text(
              "Şimdi parolayı sıfırlama zamanı. Kurallara\nuygun bir parola ve tekrarını girerek parolanı sıfırlayabilirsin.",
              style: TextStyle(
                fontSize: 14.sp,
                color: AppConstants.mainBlue,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 37.w),
            child: const UserTextFormField(hintTextTitle: "Yeni Parola"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 37.w),
            child: const UserTextFormField(hintTextTitle: "Parola Tekrarı"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 37.w),
            child: const ActionButton(
              buttonTitle: "Parolayı Kaydet",
              navigationName: NavigationConstants.loginPage,
            ),
          ),
        ],
      ),
    );
  }
}
