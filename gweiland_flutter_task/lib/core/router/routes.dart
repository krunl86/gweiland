import 'package:go_router/go_router.dart';
import 'package:gweiland_flutter_task/features/dashboard/presentation/pages/dashboard_screen.dart';

final routes = [
  GoRoute(
    path: '/',
    builder: DashboardScreen.builder,
  ),
];
