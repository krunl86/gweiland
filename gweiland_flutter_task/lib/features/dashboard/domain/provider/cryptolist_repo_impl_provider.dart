import 'package:gweiland_flutter_task/common/provider/network_service_provider.dart';
import 'package:gweiland_flutter_task/features/dashboard/data/repository_impl/cryptolist_repo_impl.dart';
import 'package:gweiland_network/gweiland_network.dart';
import 'package:riverpod/riverpod.dart';

import '../repository/crypto_repository.dart';

final driverDataSourceProvider = Provider.family<CryptoListDataSource, NetworkService>(
  (_, networkService) => CryptoListRemoteDataSource(networkService),
);

final cryptoRepositoryImplProvider = Provider<CryptoRepository>(
  (ref) {
    final NetworkService networkService = ref.watch(netwokServiceProvider);
    final CryptoListDataSource dataSource = ref.watch(driverDataSourceProvider(networkService));
    return CryptoRepositoryImpl(dataSource);
  },
);
