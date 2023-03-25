import 'package:solution_challenge_project/export.dart';

class ActionButton extends StatelessWidget {
  final String buttonTitle;
  const ActionButton({
    super.key,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      width: 300.w,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppConstants.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r),
          ),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 18.sp),
        ),
      ),
    );
  }
}
