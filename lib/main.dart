import 'package:solution_challenge_project/export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ScreenUtilInit(
      designSize: UiHelper.designSize,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName,
        getPages: NavigationService.routes,
<<<<<<< Updated upstream
        initialRoute: NavigationConstants.loginPage,
=======
        initialRoute: NavigationConstants.informPage,
>>>>>>> Stashed changes
        // initialBinding: InitialBinding(), // Initial binding always run
        theme: AppTheme.instance.lightTheme,
      ),
    ),
  );
}
