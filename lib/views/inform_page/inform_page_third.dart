import 'package:solution_challenge_project/export.dart';

class InformPageThird extends StatelessWidget {
  const InformPageThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/boy.png',
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              SizedBox(height: 32.h),
              Text(
                'Healthy Children, Healthy Future',
                style: TextStyle(
                  fontFamily: FontConstants.playfairDisplayMedium,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w),
                child: Text(
                  'Every year, millions of children around the world die from preventable diseases due to insufficient vaccinations.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontConstants.openSansMedium,
                    fontSize: 16.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(NavigationConstants.loginPage);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 12.w,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: AppConstants.buttonColor,
                            ),
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Organization Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: AppConstants.mainWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(NavigationConstants.loginPage);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 12.w,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: AppConstants.buttonColor,
                            ),
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Regular Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: AppConstants.mainWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
