import 'package:solution_challenge_project/export.dart';
<<<<<<< Updated upstream
import 'package:solution_challenge_project/views/login_and_register/new_password_page.dart';
import 'package:solution_challenge_project/views/login_and_register/password_reset_page.dart';
=======
import 'package:solution_challenge_project/views/inform_page/inform_page_1.dart';
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
    GetPage(
      name: NavigationConstants.passwordReset,
      page: () => const PasswordReset(),
    ),
    GetPage(
      name: NavigationConstants.newPassword,
      page: () => const NewPassword(),
=======
        GetPage(
      name: NavigationConstants.informPage,
      page: () => const InformPage1(),
>>>>>>> Stashed changes
    ),
  ];
}
