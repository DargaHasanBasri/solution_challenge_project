import 'package:solution_challenge_project/export.dart';

class UserButton extends StatelessWidget {
  final String buttonTitle;
  final dynamic buttonBorder;
  const UserButton({
    super.key,
    required this.buttonTitle,
    this.buttonBorder,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: buttonBorder,
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Ink(
            width: 105.w,
            height: 30.h,
            decoration: BoxDecoration(
              color: AppConstants.mainBlue,
              borderRadius: buttonBorder,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                buttonTitle,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppConstants.mainWhite,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
