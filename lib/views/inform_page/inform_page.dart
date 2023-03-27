import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/inform_page/inform_page_second.dart';

class InformPage extends StatelessWidget {
  const InformPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SafeArea(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/helping-hand.png',
            width: MediaQuery.of(context).size.width * 0.8,
          ),
          SizedBox(height: 10.h),
          Text(
            'Sufficient Resources Save Lives',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding:  EdgeInsets.only(left: 25.w, right: 25.w),
            child: Text(
              'Inadequate resources cause 1.8M Africans to suffer from cataract blindness annually, risking fatalities.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                //color: Colors.grey[600],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          GestureDetector(
            onTap: () {
              Get.toNamed(NavigationConstants.informPageSecond);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 130.h,
                vertical: 12.w,
              ),
              decoration: BoxDecoration(
                //gradient: LinearGradient(AppConstants.buttonColor),
                borderRadius: BorderRadius.circular(24.0),
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
  ),
);}}
