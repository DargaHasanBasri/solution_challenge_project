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
        initialRoute: NavigationConstants.donatePage,
        // initialBinding: InitialBinding(), // Initial binding always run
        theme: AppTheme.instance.lightTheme,
      ),
    ),
  );
}
