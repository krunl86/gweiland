import 'package:dartz/dartz.dart';
import 'package:gweiland_network/gweiland_network.dart';
import 'package:gweiland_network/common/domain/model/response.dart' as response;

abstract class CryptoListDataSource {
  Future<Either<AppException, response.Response>> cryptoList({required Map<String, dynamic> data});
}

class CryptoListRemoteDataSource implements CryptoListDataSource {
  final NetworkService networkService;

  CryptoListRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, response.Response>> cryptoList(
      {required Map<String, dynamic> data}) async {
    try {
      final eitherType = await networkService.get(
        'v1/cryptocurrency/listings/latest',
        queryParameters: data,
      );
      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          return Right(response);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: 'Unknown error occured',
          statusCode: 1,
          identifier: '${e.toString()}\nLoginUserRemoteDataSource.loginUser',
        ),
      );
    }
  }
}
