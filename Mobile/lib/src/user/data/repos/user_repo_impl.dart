import 'package:dartz/dartz.dart';
import 'package:shoptech/core/errors/exceptions.dart';
import 'package:shoptech/core/errors/failures.dart';
import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/user/data/datasources/user_remote_data_src.dart';
import 'package:shoptech/src/user/domain/entities/user.dart';
import 'package:shoptech/src/user/domain/repos/user_repo.dart';

class UserRepoImpl implements UserRepo {
  const UserRepoImpl(this._remoteDataSource);

  final UserRemoteDataSrc _remoteDataSource;

  @override
  ResultFuture<User> getUser(String userId) async {
    try {
      final result = await _remoteDataSource.getUser(userId);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
    }
  }

  @override
  ResultFuture<User> updateUser({
    required String userId,
    required DataMap updateData,
  }) async {
    try {
      final result = await _remoteDataSource.updateUser(
        userId: userId,
        updateData: updateData,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
    }
  }

  @override
  ResultFuture<String> getUserPaymentProfile(String userId) async {
    try {
      final result = await _remoteDataSource.getUserPaymentProfile(userId);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
    }
  }
}
