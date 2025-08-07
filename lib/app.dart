import 'package:flutter/material.dart';
import 'package:medi_cart/core/route/go_router_provider.dart';
import 'package:medi_cart/core/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      title: 'Medi Cart',
      debugShowCheckedModeBanner: false,
      theme: CAppTheme.lightTheme,
    );
  }
}
