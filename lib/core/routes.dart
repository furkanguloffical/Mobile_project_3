import 'package:go_router/go_router.dart';
import 'package:mobile_project_3/screens/core/loader.dart';
import 'package:mobile_project_3/screens/menu/my_shipment.dart';
import 'package:mobile_project_3/screens/menu/track_shipment.dart';
import 'package:mobile_project_3/screens/menu/find_a_location.dart';
import 'package:mobile_project_3/screens/menu/notifications.dart';
import 'package:mobile_project_3/screens/menu/rates_and_services.dart';
import 'package:mobile_project_3/screens/menu/settings.dart';
import 'package:mobile_project_3/screens/menu/support.dart';

import '../screens/client/change_password.dart';
import '../screens/client/forgat_password.dart';
import '../screens/client/login.dart';
import '../screens/client/profile.dart';
import '../screens/client/register.dart';
import '../screens/core/error.dart';
import '../screens/home.dart';
import '../screens/menu/create_shipment.dart';

import '../screens/static/about.dart';
import '../screens/static/boarding.dart';
import '../screens/static/contact.dart';
import '../screens/static/privacy_policy.dart';
import '../screens/static/succesfull_shipment.dart';

final routes = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoaderScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/boarding',
      builder: (context, state) => const BoardingScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => const ContactScreen(),
    ),
    GoRoute(
      path: '/createShipment',
      builder: (context, state) => const CreateShimentScreen(),
    ),
    GoRoute(
      path: '/trackShipment',
      builder: (context, state) => const TranckShipmentScreen(),
    ),
    GoRoute(
      path: '/myShipment',
      builder: (context, state) => const MyShipmentScreen(),
    ),
    GoRoute(
      path: '/ratesAndServices',
      builder: (context, state) => const RatesAndServicesScreen(),
    ),
    GoRoute(
      path: '/support',
      builder: (context, state) => const SupportScreen(),
    ),
    GoRoute(
      path: '/findALocation',
      builder: (context, state) => const FindALocationScreen(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationsScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/successfulShipment',
      builder: (context, state) => SuccessfulShipmentScreen(),
    ),
    GoRoute(
      path: '/PrivacyPolicy',
      builder: (context, state) => const PrivacyPolicyScreen(),
    ),
    GoRoute(
      path: '/changePassword',
      builder: (context, state) => const ChangePasswordScreen(),
    ),
    GoRoute(
      path: '/forgatPassword',
      builder: (context, state) => const ForgatPasswordScreen(),
    ),
  ],
);
