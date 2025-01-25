import 'package:go_router/go_router.dart';
import 'package:weather/feature/home_screen/ui/screen/home_screen.dart';
import 'package:weather/feature/search_screen/ui/screen/search_screen.dart';

final GoRouter routerApp = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/searchscreen',
      builder: (context, state) => SearchScreen(),
    ),
  ],
);
