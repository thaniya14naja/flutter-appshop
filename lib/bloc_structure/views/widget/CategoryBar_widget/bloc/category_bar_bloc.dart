import 'package:appshop/bloc_structure/repository/model/category_bar.dart';
import 'package:appshop/bloc_structure/repository/shopRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'category_bar_event.dart';
part 'category_bar_state.dart';

class CategoryBarBloc extends Bloc<CategoryBarEvent, CategoryBarState> {
  CategoryBarBloc({required this.shopRepository}) : super(CategoryBarState()) {
    on<GetDummyCategory>(_getDummyCategory);
  }

  final ShopRepository shopRepository;

  void _getDummyCategory(
      GetDummyCategory event, Emitter<CategoryBarState> emit) async {
    emit(state.copyWith(status: CategoryBarStatus.loading));

    try {
      final dummy = await shopRepository.getDummyCategory();
      //print(dummy);
      emit(state.copyWith(listbar: dummy, status: CategoryBarStatus.success));
    } catch (e) {
      //print(e);
      emit(state.copyWith(status: CategoryBarStatus.error));
    }
  }
}
