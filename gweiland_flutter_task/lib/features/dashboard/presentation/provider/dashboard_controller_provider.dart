import 'package:go_router/go_router.dart';
import 'package:gweiland_flutter_task/common/provider/network_service_provider.dart';
import 'package:gweiland_flutter_task/core/router/router.dart';
import 'package:gweiland_flutter_task/features/dashboard/domain/controller/dashboard_state.dart';
import 'package:gweiland_flutter_task/features/dashboard/domain/provider/cryptolist_repo_impl_provider.dart';
import 'package:gweiland_network/gweiland_network.dart';
import 'package:riverpod/riverpod.dart';

import '../../domain/controller/dashboard_controller.dart';
import '../../domain/repository/crypto_repository.dart';

final driverdataSourceProvider = Provider.family<CryptoListRemoteDataSource, NetworkService>(
  (_, networkService) => CryptoListRemoteDataSource(networkService),
);

final dashboardControllerProvider = StateNotifierProvider<DashBoardController, DashboardState>(
  (ref) {
    final CryptoRepository authenticationRepository = ref.watch(cryptoRepositoryImplProvider);
    final NetworkService networkService = ref.watch(netwokServiceProvider);
    final GoRouter routeProvider = ref.watch(routerProvider);
    return DashBoardController(
      driverRepository: authenticationRepository,
      networkService: networkService,
      routeProvider: routeProvider,
    );
  },
);
