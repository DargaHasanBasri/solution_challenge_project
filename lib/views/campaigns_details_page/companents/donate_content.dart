import 'package:solution_challenge_project/core/constants/font_constants.dart';
import 'package:solution_challenge_project/export.dart';

class DonateContent extends StatelessWidget {
  const DonateContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          "Cholera is usually transmitted to the body through seafood, food, and drinking water contaminated with the bacteria. It can easily spread in crowded environments and lead to deaths in communities affected by war, poverty, and poor sanitation practices."
          "The World Health Organization reports between 1.3 million and 4 million cases each year. It is generally found in some provinces of Africa, South Asia, and Latin America."
          "Treatment for the disease involves the use of serum and various antibiotics",
          style: TextStyle(
            fontFamily: FontConstants.openSansMedium,
            fontSize: 12.sp,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
