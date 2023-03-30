import 'package:firebase_core/firebase_core.dart';
import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ScreenUtilInit(
      designSize: UiHelper.designSize,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName,
        getPages: NavigationService.routes,
        initialRoute: NavigationConstants.splashScreen,
        // initialBinding: InitialBinding(), // Initial binding always run
        theme: AppTheme.instance.lightTheme,
      ),
    ),
  );
}
