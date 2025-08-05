// app_router.dart
import 'package:go_router/go_router.dart';
import 'package:medi_cart/core/route/route_name.dart';
import 'package:medi_cart/feature/home/presentation/screens/search_screen.dart';
import 'package:medi_cart/feature/product/presentation/screens/product_screen.dart';
import 'package:medi_cart/main_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: CRouteName.mainRoute,
      path: '/',
      builder: (_, __) => const MainScreen(),
    ),
    GoRoute(
      name: CRouteName.productRoute,
      path: '/product',
      builder: (_, __) => const ProductScreen(),
    ),
    GoRoute(
      name: CRouteName.searchRoute,
      path: '/search',
      builder: (_, __) => const SearchScreen(),
    ),
    // GoRoute(path: '/login', builder: (_, __) => const LoginPage()),,
  ],

  // Called before pushing any route
  // redirect: (BuildContext context, GoRouterState state) {
  //   // final authStatus = context.read<AuthenticationBloc>().state;
  //   // final loggingIn = state.location == '/login';

  //   // if (authStatus == AuthStatus.unknown) return '/';
  //   // if (authStatus == AuthStatus.unauthenticated && !loggingIn) {
  //   //   return '/login';
  //   // }
  //   // if (authStatus == AuthStatus.authenticated && loggingIn) {
  //   //   return '/home';
  //   // }
  //   // return null; // allow navigation
  // },
);
