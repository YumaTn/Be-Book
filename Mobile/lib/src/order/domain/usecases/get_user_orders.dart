import 'package:shoptech/core/usecase/usecase.dart';
import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/order/domain/repos/order_repo.dart';

class GetUserOrders extends UsecaseWithParams<DataMap, String> {
  const GetUserOrders(this._repo);

  final OrderRepo _repo;

  @override
  ResultFuture<DataMap> call(String params) => _repo.getUserOrders(params);
}
