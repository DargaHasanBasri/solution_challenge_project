import 'package:solution_challenge_project/export.dart';

class NavigationService {
  static List<GetPage> routes = [
    GetPage(
      name: NavigationConstants.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: NavigationConstants.loginPage,
      page: () => const LoginPage(),
    ),
  ];
}
