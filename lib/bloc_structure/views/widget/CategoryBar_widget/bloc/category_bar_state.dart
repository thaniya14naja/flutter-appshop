// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'category_bar_bloc.dart';

enum CategoryBarStatus { initial, success, error, loading }

extension CategoryBarStatusX on CategoryBarStatus {
  bool get isInitial => this == CategoryBarStatus.initial;
  bool get isSuccess => this == CategoryBarStatus.success;
  bool get isError => this == CategoryBarStatus.error;
  bool get isLoading => this == CategoryBarStatus.loading;
}

class CategoryBarState extends Equatable {
  const CategoryBarState({
    this.status = CategoryBarStatus.initial,
    List<CategoryBarModel>? listbar,
  }) : listbar = listbar ?? const [];

  final CategoryBarStatus status;
  final List<CategoryBarModel> listbar;

  @override
  List<Object> get props => [status, listbar];

  CategoryBarState copyWith({
    CategoryBarStatus? status,
    List<CategoryBarModel>? listbar,
  }) {
    return CategoryBarState(
      status: status ?? this.status,
      listbar: listbar ?? this.listbar,
    );
  }
}
