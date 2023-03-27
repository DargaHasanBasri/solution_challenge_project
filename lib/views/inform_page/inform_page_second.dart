import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/inform_page/inform_page_third.dart';

class InformPageSecond extends StatelessWidget {
  const InformPageSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/medical-team.png',
          width: MediaQuery.of(context).size.width * 0.8,
        ),
        SizedBox(height: 32.h),
        Text(
          'Don\'t Ignore Calls for Help',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding:  EdgeInsets.only(left: 25.w,right: 25.w),
          child: Text(
            'Overwhelming scientific evidence confirms the severe and lasting impact of AIDS on individuals and communities globally.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey[600],
            ),
          ),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () {
            Get.toNamed(NavigationConstants.informPageThird);
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 130.h,
              vertical: 12.w,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppConstants.mainBlue,
                  AppConstants.mainOrange,
                ],
              ),
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Text(
              'Next',
              style: TextStyle(
                fontSize: 18.sp,
                color: AppConstants.mainWhite,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);}}
