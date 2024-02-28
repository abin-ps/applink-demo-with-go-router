import 'package:applink_demo/screens/category_screen.dart';
import 'package:applink_demo/screens/catelog_screen.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const CategoryScreen(),
      routes: [
        GoRoute(
          path: 'catelog',
          builder: (_, __) => const CatelogScreen(),
        )
      ],
    ),
  ],
);
