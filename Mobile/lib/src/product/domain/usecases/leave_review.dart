import 'package:shoptech/core/usecase/usecase.dart';
import 'package:shoptech/core/utils/typedefs.dart';
import 'package:shoptech/src/product/domain/repos/product_repo.dart';
import 'package:equatable/equatable.dart';

class LeaveReview extends UsecaseWithParams<void, LeaveReviewParams> {
  const LeaveReview(this._repo);

  final ProductRepo _repo;

  @override
  ResultFuture<void> call(LeaveReviewParams params) => _repo.leaveReview(
        productId: params.productId,
        userId: params.userId,
        comment: params.comment,
        rating: params.rating,
      );
}

class LeaveReviewParams extends Equatable {
  const LeaveReviewParams({
    required this.productId,
    required this.userId,
    required this.comment,
    required this.rating,
  });

  final String productId;
  final String userId;
  final String comment;
  final double rating;

  @override
  List<dynamic> get props => [
        productId,
        userId,
        comment,
        rating,
      ];
}
