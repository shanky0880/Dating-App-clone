import 'package:auto_route/annotations.dart';
import 'package:dating_application_screens/authentication/presentation/logIn/email_confirm.dart';
import 'package:dating_application_screens/authentication/presentation/logIn/log_in_page.dart';
import 'package:dating_application_screens/authentication/presentation/logIn/verify_page.dart';
import 'package:dating_application_screens/authentication/presentation/logIn/welcome_page.dart';
import 'package:dating_application_screens/authentication/presentation/signUp/sign_up_page.dart';
import 'package:dating_application_screens/dashboard/d_profile/presentation/profile_setting.dart';
import 'package:dating_application_screens/dashboard/presentation/dashboard_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SignUpPage,
      initial: true,
    ),
    AutoRoute(
      page: LogInPage,
    ),
    AutoRoute(
      page: EmailConfirmPage,
    ),
    AutoRoute(
      page: VerifyCodePage,
    ),
    AutoRoute(
      page: WelcomePage,
    ),
    AutoRoute(
      page: DashBoardPage,
    ),
    AutoRoute(
      page: ProfileSettingPage,
    ),
  ],
)
class $AppRouter {}
