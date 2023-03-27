import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/campaigns_page/donate_page1.dart';

import 'package:solution_challenge_project/views/inform_page/inform_page.dart';
import 'package:solution_challenge_project/views/inform_page/inform_page_second.dart';
import 'package:solution_challenge_project/views/inform_page/inform_page_third.dart';

import 'package:solution_challenge_project/views/login_and_register/new_password_page.dart';
import 'package:solution_challenge_project/views/login_and_register/password_reset_page.dart';
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
    GetPage(
      name: NavigationConstants.passwordReset,
      page: () => const PasswordReset(),
    ),
    GetPage(
      name: NavigationConstants.newPassword,
      page: () => const NewPassword(),
    ),
    GetPage(

      name: NavigationConstants.donatePage1,
      page: () => const DonatePage1(),
    ),

      name: NavigationConstants.informPage,
      page: () => const InformPage(),
    ),
    GetPage(
      name: NavigationConstants.informPageSecond,
      page: () => const InformPageSecond(),
    ),
    GetPage(
      name: NavigationConstants.informPageThird,
      page: () => const InformPageThird(),
    ),
  ];
}
