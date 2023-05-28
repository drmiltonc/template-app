import 'package:go_router/go_router.dart';
import 'package:template_app/presentation/ui/screens/screens.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
