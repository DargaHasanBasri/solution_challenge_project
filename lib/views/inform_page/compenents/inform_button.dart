import 'package:solution_challenge_project/export.dart';

class InformButton extends StatelessWidget {
  final String buttonTitle;
  final dynamic navigationName;
  final double valueHorizontal;
  final double valueVertical;
  const InformButton({
    super.key,
    required this.buttonTitle,
    this.navigationName,
    required this.valueHorizontal,
    required this.valueVertical,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(navigationName);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: valueHorizontal.h,
          vertical: valueVertical.w,
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: AppConstants.buttonColor,
          ),
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontFamily: FontConstants.openSansMedium,
            fontSize: 18.sp,
            color: AppConstants.mainWhite,
          ),
        ),
      ),
    );
  }
}
