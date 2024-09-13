import 'package:shoptech/core/usecase/usecase.dart';
import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/wishlist/domain/entities/wishlist_product.dart';
import 'package:shoptech/src/wishlist/domain/repos/wishlist_repo.dart';

class GetWishlist extends UsecaseWithParams<List<WishlistProduct>, String> {
  const GetWishlist(this._repo);

  final WishlistRepo _repo;

  @override
  ResultFuture<List<WishlistProduct>> call(String params) =>
      _repo.getWishlist(params);
}
