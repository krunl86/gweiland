import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gweiland_flutter_task/core/app/app.dart';

void main() {
  final providerContainer = ProviderContainer();
  WidgetsFlutterBinding.ensureInitialized();

  //initialization services
  //providerContainer.read(initializationServiceProvider.notifier).init();

  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const GweilandApp(),
    ),
  );
}
