import 'package:go_router/go_router.dart';
import 'package:twnsqr_task_1/features/dashboard/presentation/views/dashboard_view.dart';

abstract class Routes {
  // route name
  static String get dashboard => '/';

  // router
  static final routes = GoRouter(
    initialLocation: dashboard,
    routes: [
      GoRoute(
        name: dashboard,
        path: dashboard,
        builder: (context, state) => const DashboardView(),
      ),
    ],
  );
}
