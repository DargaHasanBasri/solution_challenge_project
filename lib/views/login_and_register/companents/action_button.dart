import 'package:solution_challenge_project/export.dart';

class ActionButton extends StatelessWidget {
  final String buttonTitle;
  final dynamic navigationName;
  const ActionButton({
    super.key,
    required this.buttonTitle,
    this.navigationName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      width: 300.w,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(navigationName);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppConstants.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r),
          ),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(
              fontSize: 18.sp, fontFamily: FontConstants.openSansMedium),
        ),
      ),
    );
  }
}
