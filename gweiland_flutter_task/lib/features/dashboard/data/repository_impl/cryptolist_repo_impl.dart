import 'package:gweiland_flutter_task/features/dashboard/domain/repository/crypto_repository.dart';
import 'package:gweiland_network/common/domain/model/response.dart' as response;
import 'package:dartz/dartz.dart';
import 'package:gweiland_network/gweiland_network.dart';

class CryptoRepositoryImpl extends CryptoRepository {
  final CryptoListDataSource dataSource;

  CryptoRepositoryImpl(this.dataSource);

  @override
  Future<Either<AppException, response.Response>> getCriptoList(
      {required Map<String, dynamic> data}) {
    return dataSource.cryptoList(data: data);
  }
}
