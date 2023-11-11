import 'package:dartz/dartz.dart';

import '../common/data/remote/network_service.dart';
import '../common/exceptions/http_exception.dart';
import 'package:gweiland_network/common/domain/model/response.dart' as response;

abstract class LoginUserDataSource {
  Future<Either<AppException, response.Response>> loginUser({required Map<String, dynamic> user});
  Future<Either<AppException, response.Response>> isOTPEnabled({required String user});
}

class LoginUserRemoteDataSource implements LoginUserDataSource {
  final NetworkService networkService;

  LoginUserRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, response.Response>> loginUser(
      {required Map<String, dynamic> user}) async {
    try {
      final eitherType = await networkService.post(
        'login',
        data: user,
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

  @override
  Future<Either<AppException, response.Response>> isOTPEnabled({required String user}) async {
    try {
      final eitherType = await networkService.get(
        'check-otp-option',
        queryParameters: {
          'name': user,
        },
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
