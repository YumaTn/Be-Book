import 'package:dartz/dartz.dart' hide Order;
import 'package:shoptech/core/errors/exceptions.dart';
import 'package:shoptech/core/errors/failures.dart';
import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/order/data/datasources/order_remote_data_src.dart';
import 'package:shoptech/src/order/domain/entities/order.dart';
import 'package:shoptech/src/order/domain/repos/order_repo.dart';

class OrderRepoImpl implements OrderRepo {
  const OrderRepoImpl(this._remoteDataSource);

  final OrderRemoteDataSrc _remoteDataSource;

  @override
  ResultFuture<Order> getOrder(String orderId) async {
    try {
      final result = await _remoteDataSource.getOrder(orderId);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }

  @override
  ResultFuture<DataMap> getUserOrders(String userId) async {
    try {
      final result = await _remoteDataSource.getUserOrders(userId);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
    }
  }
}
