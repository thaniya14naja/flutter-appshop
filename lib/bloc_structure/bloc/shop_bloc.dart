import 'package:appshop/bloc_structure/repository/model/category.dart';
import 'package:appshop/bloc_structure/repository/shopRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc({required this.shopRepository}) : super(const ShopState()) {
    on<GetDummyCategory>(_getDummyCategory);
  }

  final ShopRepository shopRepository;

  void _getDummyCategory(
      GetDummyCategory event, Emitter<ShopState> emit) async {
    emit(state.copyWith(status: ShopStatus.loading));

    try {
      final dummy = await shopRepository.getDummyCategory();
      //print(dummy);
      //emit(state.copyWith(listCategory: dummy, status: ShopStatus.success));
    } catch (e) {
      //print(e);
      emit(state.copyWith(status: ShopStatus.error));
    }
  }
}
