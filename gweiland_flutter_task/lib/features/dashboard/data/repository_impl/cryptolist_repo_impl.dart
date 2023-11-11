import 'package:gweiland_flutter_task/features/dashboard/domain/repository/crypto_repository.dart';
import 'package:gweiland_network/common/domain/model/response.dart' as response;
import 'package:dartz/dartz.dart';
import 'package:gweiland_network/gweiland_network.dart';

// Creypto repository impl class is responsible impleenting repository methods to connect data sources
class CryptoRepositoryImpl extends CryptoRepository {
  final CryptoListDataSource dataSource;

  CryptoRepositoryImpl(this.dataSource);

  // calling crptolist from different data sources. if in future we need to store locally data for offine use
  @override
  Future<Either<AppException, response.Response>> getCriptoList(
      {required Map<String, dynamic> data}) {
    return dataSource.cryptoList(data: data);
  }
}
