part of 'router.dart';

// route Navigator key is used for showing pop up and dialogs in non context controllers
final rootNavigatorKey = GlobalKey<NavigatorState>();

// navingaton provider return GoRouter to manange push pop and go
final routerProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: '/',
      navigatorKey: rootNavigatorKey,
      routes: routes,
    );
  },
);
