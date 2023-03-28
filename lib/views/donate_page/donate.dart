import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/companents/arrow_left.dart';
import 'package:solution_challenge_project/views/inform_page/compenents/inform_button.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({super.key});

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 875.h,
                width: 95.w,
                color: AppConstants.mainWhite,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: ArrowLeft(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 750.h),
                child: Container(
                  width: 80.w,
                  height: 70.h,
                  color: AppConstants.mainOrange,
                ),
              ),
            ],
          ),
          Container(
            width: 280.w,
            height: 875.h,
            color: AppConstants.mainBlue,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    top: 40.h,
                  ),
                  child: Container(
                    width: 260.w,
                    height: 530.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.r),
                          bottomLeft: Radius.circular(25.r)),
                    ),
                    child: Image.asset(
                      'assets/images/resim1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 700.h),
                  child: InformButton(
                    buttonTitle: "Enter amount",
                    valueHorizontal: 85,
                    valueVertical: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
