import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/login_and_register/register_page.dart';

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
    GetPage(
      name: NavigationConstants.registerPage,
      page: () => const RegisterPage(),
    ),
  ];
}
