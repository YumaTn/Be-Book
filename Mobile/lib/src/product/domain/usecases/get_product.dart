import 'package:shoptech/core/usecase/usecase.dart';
import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/product/domain/entities/product.dart';
import 'package:shoptech/src/product/domain/repos/product_repo.dart';

class GetProduct extends UsecaseWithParams<Product, String> {
  const GetProduct(this._repo);

  final ProductRepo _repo;

  @override
  ResultFuture<Product> call(String params) => _repo.getProduct(params);
}
