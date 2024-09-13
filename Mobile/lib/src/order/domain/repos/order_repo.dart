import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/order/domain/entities/order.dart';

abstract class OrderRepo {
  ResultFuture<Order> getOrder(String orderId);
  ResultFuture<DataMap> getUserOrders(String userId);
}
