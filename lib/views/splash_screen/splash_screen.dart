import 'dart:async';
import 'package:solution_challenge_project/export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Get.toNamed(NavigationConstants.informPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppConstants.mainWhite,
        child: Center(child: Image.asset("assets/images/splash_photo.png")),
      ),
    );
  }
}
