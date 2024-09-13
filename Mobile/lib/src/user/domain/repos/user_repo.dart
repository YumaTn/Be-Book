import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/user/domain/entities/user.dart';

abstract class UserRepo {
  ResultFuture<User> getUser(String userId);
  ResultFuture<User> updateUser({
    required String userId,
    required DataMap updateData,
  });
  ResultFuture<String> getUserPaymentProfile(String userId);
}
