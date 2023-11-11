import 'package:dartz/dartz.dart';
import 'package:gweiland_network/gweiland_network.dart';
import 'package:gweiland_network/common/domain/model/response.dart' as response;

abstract class CryptoRepository {
  Future<Either<AppException, response.Response>> getCriptoList(
      {required Map<String, dynamic> data});
}
