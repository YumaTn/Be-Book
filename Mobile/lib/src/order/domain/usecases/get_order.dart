import 'package:shoptech/core/usecase/usecase.dart';
import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/order/domain/entities/order.dart';
import 'package:shoptech/src/order/domain/repos/order_repo.dart';

class GetOrder extends UsecaseWithParams<Order, String> {
  const GetOrder(this._repo);

  final OrderRepo _repo;

  @override
  ResultFuture<Order> call(String params) => _repo.getOrder(params);
}
