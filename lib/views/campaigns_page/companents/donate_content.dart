import 'package:solution_challenge_project/export.dart';

class DonateContent extends StatelessWidget {
  const DonateContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 375.w,
          height: 450.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
            color: AppConstants.mainWhite,
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 150.h, left: 15.w, right: 15.w),
            child: Text(
              "İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik"
              "bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi"
              "İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi İçerik bilgi",
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
