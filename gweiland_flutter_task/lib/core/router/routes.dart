import 'package:go_router/go_router.dart';
import 'package:gweiland_flutter_task/features/dashboard/presentation/pages/dashboard_screen.dart';

final routes = [
  // landing page redirection  as we have no much pages have done only one route
  GoRoute(
    path: '/',
    builder: DashboardScreen.builder,
  ),
];
