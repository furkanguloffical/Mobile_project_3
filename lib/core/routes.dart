import 'package:go_router/go_router.dart';
import 'package:mobile_project_3/screens/core/loader.dart';
import 'package:mobile_project_3/screens/menu/My-shipment.dart';
import 'package:mobile_project_3/screens/menu/Track-shipment.dart';
import 'package:mobile_project_3/screens/menu/find-a-location.dart';
import 'package:mobile_project_3/screens/menu/notifications.dart';
import 'package:mobile_project_3/screens/menu/rates-and-services.dart';
import 'package:mobile_project_3/screens/menu/settings.dart';
import 'package:mobile_project_3/screens/menu/support.dart';

import '../screens/client/login.dart';
import '../screens/client/profile.dart';
import '../screens/client/register.dart';
import '../screens/core/error.dart';
import '../screens/home.dart';
import '../screens/menu/create-shipment.dart';
import '../screens/product/product.dart';
import '../screens/product/search.dart';
import '../screens/static/about.dart';
import '../screens/static/boarding.dart';
import '../screens/static/contact.dart';

final routes = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      path: '/', // Default route
      builder: (context, state) => const LoaderScreen(),
    ),
    GoRoute(
      path: '/home', // Default route
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/boarding', // Default route
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
      path: '/product',
      builder: (context, state) => const ProductScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
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
      builder: (context, state) => const createShimentScreen(),
    ),
    GoRoute(
      path: '/trackShipment',
      builder: (context, state) => const tranckShipmentScreen(),
    ),
    GoRoute(
      path: '/myShipment',
      builder: (context, state) => const myShipmentScreen(),
    ),
    GoRoute(
      path: '/ratesAndServices',
      builder: (context, state) => const ratesAndServicesScreen(),
    ),
    GoRoute(
      path: '/support',
      builder: (context, state) => const supportScreen(),
    ),
    GoRoute(
      path: '/findALocation',
      builder: (context, state) => const findALocationScreen(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const notificationsScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const settingsScreen(),
    ),
  ],
);
