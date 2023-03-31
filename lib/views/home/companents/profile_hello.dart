import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/home/companents/search_bar.dart';

class ProfileHello extends StatelessWidget {
  const ProfileHello({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200.h,
          decoration: BoxDecoration(
            color: AppConstants.mainOrange,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35.r),
              bottomRight: Radius.circular(35.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Align(
              alignment: Alignment.center,
              child: Opacity(
                opacity: 0.1,
                child: Text(
                  "Hello!",
                  style: TextStyle(
                    fontSize: 132.sp,
                    color: AppConstants.mainWhite,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 35.h, left: 320.w),
          child: Align(
            child: SvgPicture.asset("assets/icons/on_notification.svg"),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100.h, left: 15.w),
              child: CircleAvatar(
                radius: 25.r,
                backgroundImage: const AssetImage("assets/images/profile7.png"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100.h, left: 5.w),
                  child: Text(
                    "Good Morning!",
                    style: TextStyle(
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                      fontSize: 24.sp,
                      color: AppConstants.mainWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(
                    "Mr. Hasan Basri",
                    style: TextStyle(
                      fontFamily: FontConstants.openSansMedium,
                      fontSize: 14.sp,
                      color: AppConstants.mainWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 175.h),
          child: const SearchBar(),
        ),
      ],
    );
  }
}
