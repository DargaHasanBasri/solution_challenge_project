import 'package:solution_challenge_project/export.dart';

class ArrowLeft extends StatelessWidget {
  const ArrowLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        "assets/icons/arrow.svg",
        color: AppConstants.mainWhite,
        width: 25.w,
        height: 25.h,
      ),
      onPressed: () => Get.back(),
    );
  }
}
