// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'shop_bloc.dart';

enum ShopStatus { initial, success, error, loading }

extension ShopStatusX on ShopStatus {
  bool get isInitial => this == ShopStatus.initial;
  bool get isSuccess => this == ShopStatus.success;
  bool get isError => this == ShopStatus.error;
  bool get isLoading => this == ShopStatus.loading;
}

class ShopState extends Equatable {
  final ShopStatus status;
  final List<CategoryModel> listCategory;
  const ShopState({
    this.status = ShopStatus.initial,
    List<CategoryModel>? listCategory,
  }) : listCategory = listCategory ?? const [];

  @override
  List<Object> get props => [status, listCategory];

  ShopState copyWith({
    ShopStatus? status,
    List<CategoryModel>? listCategory,
  }) {
    return ShopState(
      status: status ?? this.status,
      listCategory: listCategory ?? this.listCategory,
    );
  }
}
