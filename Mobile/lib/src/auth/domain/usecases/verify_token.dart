import 'package:shoptech/core/usecase/usecase.dart';
import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/auth/domain/repos/auth_repo.dart';

class VerifyToken extends UsecaseWithoutParams<bool> {
  const VerifyToken(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<bool> call() => _repo.verifyToken();
}
