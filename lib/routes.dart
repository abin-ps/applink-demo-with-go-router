import 'package:applink_demo/screens/category_screen.dart';
import 'package:applink_demo/screens/catelog_screen.dart';
import 'package:go_router/go_router.dart';

import 'screens/preview_screen.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const CategoryScreen(),
      routes: [
        GoRoute(
          path: 'catelog',
            builder: (context, state) => CatelogScreen(
                  categoryId: (state.extra as Map<dynamic, dynamic>)['id'] ?? '',
                ),
            routes: [
              GoRoute(
                path: 'preview',
                builder: (context, state) => PreviewScreen(
                  imageId: (state.extra as Map)['id'] ?? '',
                ),
              )
            ]
        )
      ],
    ),
  ],
);
