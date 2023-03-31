import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/inform_page/compenents/image_and_title.dart';
import 'package:solution_challenge_project/views/inform_page/compenents/inform_button.dart';

class InformPageSecond extends StatelessWidget {
  const InformPageSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ImageAndTitle(
              imageAdress: 'assets/images/medical-team.png',
              imageTitle: 'Don\'t Ignore Calls for Help',
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w),
              child: Text(
                'Overwhelming scientific evidence confirms the severe and lasting impact of AIDS on individuals and communities globally.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.grey[500],
                  fontFamily: FontConstants.openSansMedium,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            const InformButton(
              buttonTitle: "Next",
              navigationName: NavigationConstants.informPageThird,
              valueHorizontal: 130,
              valueVertical: 12,
            ),
          ],
        ),
      ),
    );
  }
}
