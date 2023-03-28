import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/inform_page/compenents/image_and_title.dart';
import 'package:solution_challenge_project/views/inform_page/compenents/inform_button.dart';

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
              const ImageAndTitle(
                imageAdress: 'assets/images/helping-hand.png',
                imageTitle: 'Sufficient Resources Save Lives',
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w),
                child: Text(
                  'Inadequate resources cause 1.8M Africans to suffer from cataract blindness annually, risking fatalities.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              const InformButton(
                buttonTitle: "Next",
                navigationName: NavigationConstants.informPageSecond,
                valueHorizontal: 120,
                valueVertical: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
